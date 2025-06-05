---
id: adding-more-ephemeral-keys-secondary-authentication-checks
title: Adding More Ephemeral Keys & Secondary Authentication Checks
description: Secondary authentication checks for ephemeral key registration
---

:::info[Use the SDK]
Our [SDK](../kotlin-multiplatform-sdk/install.md) takes care of the complexity detailed in this guide, we strongly recommend using it for your application.
The information provided here is for educational purposes and to help you understand the underlying processes.
:::

In this guide we'll explore secondary authentication checks for ephemeral key registration - you may have found when 
following the steps in the guide on 
[ephemeral key registration and unlocking](ephemeral-key-registration-unlocking-a-door.md) that Doordeck responded with 
a HTTP 423 when trying to add the ephemeral key.

When setting an ephemeral key for a new user, it will almost always be accepted immediately (because it's a new user!), 
but if the user wants to use a new device, they need a new ephemeral key (unless you have a secure way to get the first 
ephemeral key from the other device, such as through keychain sync), in this case Doordeck may want to verify the user 
is who they claim - we tell you about this through the use of HTTP 423.

We have a few options for verifying the user, email, SMS or a phone call - all of these are white labelled (or barely 
labelled at all) so it looks like it's coming from your App rather than from Doordeck - we'll try and select the most 
appropriate communication method based on the fields you've provided in the OpenID auth token, we'll look for a verified
communication method with preference for email then SMS as this is what user's have come to expect, but you can override
this. Let's ask for a secondary authentication code to be SMS' to us:

```shell
curl "https://api.doordeck.com/auth/certificate/verify?method=SMS"  \
  -X POST \
  -H "Authorization: Bearer $TOKEN" \
  -H 'content-type: application/json' \
  --data-binary "{\"ephemeralKey\":\"`cat public.base64.key`\"}"
```

You'll note, that just like when we registered the ephemeral key last time, we need to specify the entire ephemeral key 
at the start of the verification process.

If your OpenID auth token includes the telephone field and has marked it as verified, you should receive an SMS shortly
- the code in the SMS is valid for 5 minutes.

You can remove `?method=SMS` and Doordeck will auto-select a method, or you can specify one of the following:

- `SMS` - Send an SMS to the user
- `TELEPHONE` - Call the user and read out the code
- `EMAIL` - Email the user

Bear in mind, if you specify a method but don't have the corresponding field in the OpenID auth token, you'll get an 
error message.

After acquiring the verification code from the user, you should sign it with your ephemeral key - almost exactly like 
you'd sign the JWT used in the unlock request from the previous guide, but this time we need standard Base64 encoding 
rather than Base64Url; we can use the commonly available base64 and openssl commands to do this.

```shell
# Sign code
echo -n '12345678' > code
openssl pkeyutl -sign -inkey private.key  -rawin -in code | base64
```

You can now send Doordeck the signature, and we'll know that both the verification code is what we expect and that 
you've used the same ephemeral key for verifying - we'll then return a certificate chain that you can use immediately.

```shell
curl "https://api.doordeck.com/auth/certificate/check"  \
  -X POST \
  -H "Authorization: Bearer $TOKEN" \
  -H 'content-type: application/json' \
  --data-binary "{\"verificationSignature\":\"BASE64-ENCODED-SIGNATURE"}"
```

Our SDKs have this process setup already - you can check early if the user will need to go through a verification 
process and decide to perform it as they login or wait until they go to unlock a door, both have advantages and 
disadvantages.
