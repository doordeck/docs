---
id: ephemeral-key-registration-unlocking-a-door
title: Ephemeral Key Registration & Unlocking a Door
description: User ephemeral keys, Ed25519, certificate chains and digital signatures using EdDSA
---

In this guide we're exploring user ephemeral keys, Ed25519, certificate chains and digital signatures using EdDSA - 
all of this to unlock a door!

:::info[Use the SDK]
Our [SDK](../kotlin-multiplatform-sdk/install.md) takes care of the complexity detailed in this guide, we strongly recommend using it for your application.
The information provided here is for educational purposes and to help you understand the underlying processes.
:::

---

## Prerequisites
The examples in this article require a recent version of OpenSSL (we tested against OpenSSL 3.1.4). Verify your OpenSSL 
version by running:

```shell
openssl genpkey -algorithm ed25519
```
If that command succeeds, you're ready to proceed.

---

## Concepts

Ed25519 is a public‐key signature system. It consists of:
-	A private key, which you use to sign messages.
-	A public key, which anyone can use to verify signatures.

Doordeck relies on digital signatures to ensure that only the right user is performing an action. Under the hood:
-	EdDSA stands for Edwards Digital Signature Algorithm, the algorithm used to generate and verify signatures.
-	Ed25519 is the elliptic‐curve specification on which EdDSA operates.

If you've used RSA, Ed25519 works similarly but offers smaller key sizes and better performance.

## Ephemeral Key Registration

Every time a user logs into a new device, we generate a new Ed25519 keypair and ask Doordeck to sign it in the form of a
keychain, we can perform these steps manually, let's start by generating a keypair.

```shell
openssl genpkey -algorithm ed25519 -outform DER -out private.key
```

Extract the public key

```shell
openssl pkey -inform DER -in private.key -pubout -outform DER -out public.key
```

We need to wrap the public key in base 64 encoding to be able to send it to Doordeck:

```shell
cat public.key | base64 > public.base64.key
```

Now we can send it to Doordeck using an auth key generated from the previous article; currently we need to use the 
development endpoint - we'll save the response to a file called `certs.json`

```shell
curl "https://api.doordeck.com/auth/certificate" \
  -X POST \
  -H "Authorization: Bearer $TOKEN"  \
  -H 'content-type: application/json'  \
  --data-binary "{\"ephemeralKey\":\"`cat public.base64.key`\"}" > certs.json
```

This endpoint tells us our newly generated certificate chain and our Doordeck user ID which we need for certain 
operations, such as having a door shared with us. We'll be using this information later so hold onto it.

--- 

## Get A Door

Whilst we could jump straight into unlocking a door, you probably haven't got one setup yet, so I've thrown together a 
basic HTML form where you can input your user ID as displayed from the last step:

```shell
cat certs.json | jq .userId
```

Visit https://api.doordeck.com/demo/ and put your user ID in.

---

## Unlock It!

Now we need to construct a signed JWT request and send it to Doordeck to forward onto the Demo door - this is 
surprisingly similar to the OpenID token we created in the previous article since OpenID is built on top of JWT!

The header is easy, we take the certificate chain from the last step and put it in the `x5c` field, we then specify our 
algorithm, EdDSA and `typ` as `JWT`, e.g.

```json title="JWT Header"
{
 "typ": "jwt",
 "x5c": [
   "MII...",
   "MII...",
   "MII...",
   "MII..."
 ],
 "alg": "EdDSA"
}
```

Most certificates start with MII but replace them with actual certificates as shown in the last step, in the same order.

The body is where we specify the door we want to unlock and how long our request is valid for, e.g.:

```json title="JWT Payload"
{
  "iss": "YOUR_USER_ID",
  "sub": "ad8fb900-4def-11e8-9370-170748b9fca8",
  "operation": {
    "type": "MUTATE_LOCK",
    "locked": false
  },
  "exp": 1550497860,
  "iat": 1550497800,
  "nbf": 1550497800
}
```

You'll have to adjust a few fields in this JSON example, specifically you should put your user ID from the last step in 
the `iss` field (as you're issuing the command), the subject here is the demo door ID so you can leave that the same, 
but you'll need to set the `iat` and `nbf` fields to the current Unix timestamp in seconds then the `exp` field to the 
current Unix timestamp + 60 seconds, this is adjustable but 60 seconds is a sensible default.

As JWT goes, we have to BASE64URL encode the header then the body and concatenate them with a `.` period in between.

```shell
alias base64url="base64 | sed 's/+/-/g;s/\//_/g;s/=//g'"
echo -n '{"typ":"jwt","x5c":["MII...","MII...","MII...","MII..."],"alg":"EdDSA"}' | base64url
echo -n '{"iss":"YOUR_USER_ID","sub":"ad8fb900-4def-11e8-9370-170748b9fca8","operation":{"type":"MUTATE_LOCK","locked":false},"exp":1550497860,"iat":1550497800,"nbf":1550497800}' | base64url
```

Combine these and perform a signature calculation.

```shell
echo -n eyJ0eXAiOiJqd3QiLCJ4NWMiOlsiTUlJLi4uIiwiTUlJLi4uIiwiTUlJLi4uIiwiTUlJLi4uIl0sImFsZyI6IkVkRFNBIn0K.eyJpc3MiOiJZT1VSX1VTRVJfSUQiLCJzdWIiOiJhZDhmYjkwMC00ZGVmLTExZTgtOTM3MC0xNzA3NDhiOWZjYTgiLCJvcGVyYXRpb24iOnsidHlwZSI6Ik1VVEFCTEVfTE9DSyIsImxvY2tlZCI6ZmFsc2V9LCJleHAiOjE1NTA0OTc4NjAsImlhdCI6MTU1MDQ5NzgwMCwibmJmIjoxNTUwNDk3ODAwfQo > token
openssl pkeyutl -sign -inkey private.key -rawin -in token | base64url
```

Phew, almost there! That command should output a signature in Base64Url format, e.g.

```text
lA-iqBxlWd5JHT15_72dOQmFqglWrmJEVX2_-R0ZCelZrejquDJLMGAJV_8YpRD3cWaWDMCalB2Zc7juD4uXCQ
```

Combine it all together, and you get a complete JWT token which we can now send to Doordeck.

```shell
curl 'https://api.doordeck.com/device/ad8fb900-4def-11e8-9370-170748b9fca8/execute' \
 -X POST \
 -H 'authorization: Bearer TOKEN' \
 -H 'content-type: application/jwt' \
 --data-binary "$JWT"
```

Sending this command should trigger the animated virtual door at https://demo.doordeck.com/, don't forget, you may need
to update the expiry time of your JWT since generating the initial payload.
