---
id: sharing-doors
title: Sharing Doors
description: A low level guide to sharing doors and secure operations.
---

:::info[Use the SDK]
Our [SDK](../kotlin-multiplatform-sdk/install.md) takes care of the complexity detailed in this guide, we strongly recommend using it for your application.
The information provided here is for educational purposes and to help you understand the underlying processes.
:::

Sharing a door is one of the secure operations within Doordeck that must be performed by a door administrator who has a 
valid ephemeral key, see our guide on 
[registering an initial ephemeral key](ephemeral-key-registration-unlocking-a-door.md) and 
[registering subsequent ephemeral keys](adding-more-ephemeral-keys-secondary-authentication-checks.md) when logging into new devices.

Although the actual operation to share a door is structurally very similar to an unlock request, there is some initial 
data needed before we can proceed, in particular we need to know the Doordeck identifier for the user you want to share 
a door with, and we need to know their public key.

:::tip
Want to know which doors you can share? We have an 
[endpoint which returns a list of shareable locks](../cloud-api/lock-operations/get-shareable-locks.md) (i.e. locks for 
which you are an administrator).
:::

Doordeck provides a [convenient endpoint](../cloud-api/lock-operations/lookup-user-public-key-v2.md) for locating the 
Doordeck identifier and public key of your users - you can query by email, telephone, your own user identifier 
(foreignKey) or an encrypted OpenID identity which we'll explore a bit later.

As a reminder, whenever you call any of our endpoints with a valid OpenID token, we'll dynamically create that user and 
update our internal user directory with their details, for this example let's assume that Doordeck knows about the 
following user.

> Subject: `123`
> 
> Email: `info@doordeck.com`
> 
> Telephone: `+442034341020`

I can now query the internal directory for the Doordeck identifier and public key of this user through any one of those 
identifiers.

```shell
# By email
curl 'https://api.doordeck.com/directory/query' \
  -X POST \
  -H 'authorization: Bearer $TOKEN' \
  -H 'content-type: application/json' \
  --data-binary '{"email":"info@doordeck.com"}'
  
# By telephone
curl 'https://api.doordeck.com/directory/query' \
  -X POST \
  -H 'authorization: Bearer $TOKEN' \
  -H 'content-type: application/json' \
  --data-binary '{"telephone":"+442034341020"}'
  
 # By foreign key
 curl 'https://api.doordeck.com/directory/query' \
  -X POST \
  -H 'authorization: Bearer $TOKEN' \
  -H 'content-type: application/json' \
  --data-binary '{"foreignKey":"123"}'
```

All of these requests will return the same user:

```json
{
  "id":"be3209a8-3bfd-40ed-b315-36871f00f318",
  "publicKey": "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxamCHDTGM9SaZ2eKO0ivMYwcpkn4ih2vhpD4RQ4M+Px+AbCGDURSpmmkK7gECLBwE4Fp5kpOKeeEoyjrQ+T89v7wnoG1WhQadnoehkoIdmORw6k0QHIAbOIMUKQ6qFp5eSYB3lqWhLTWsIimVh/4sro2Z1bOJecCFEdrg3+pSTMbRIIOIpPeYS1W20oftYRNr7/Ik6vjooabpFkVbcM/fKcfIy08yTImO6YMfRmKJRptPYtn+FF2Wghrc9xsErVqo1VGkiQou7jk49zGSfF2GGZzjUUkxSw9xVpO8gWgghTMCOVcv+cFGntD8WNXcl2ErPOV7+UoUutkiXf6Tu/INQIDAQAB"
}
```

The user directory endpoint is designed to be called directly by any valid user, so you can avoid proxying the request 
via your backend, should you choose to.

:::tip
Can't find a user in the directory? User's only get added to the directory when you've marked the communication method 
as verified, e.g. you need to include the `email_verified: true` field or the `telephone_verified: true` field in the 
OpenID token for that user.
:::

Now you've got the user details, you can generate a sharing request, this looks structurally similar to unlocking a door
but the operation object contains an `ADD_USER` type instead; as we do with other secure operations, let's start by 
creating the body of the JWT request:

There are a number of important fields in the request body, you can view the full details on the 
[endpoint details](../cloud-api/lock-operations/share-a-lock-v1.md) but here is a summary:

| Field               | Description                                                                      |
|---------------------|----------------------------------------------------------------------------------|
| iss                 | Your Doordeck identifier                                                         |
| sub                 | Door identifier to be shared                                                     |
| operation.type      | `ADD_USER` to indicate a sharing operation                                       |
| operation.user      | Doordeck identifier of the user acquired via the user directory operation        |
| operation.publicKey | Public key of the user as acquired by the user directory                         |
| operation.role      | `USER` or `ADMIN` depending on the level of permission you want the user to have |

Now we need to create a JWT header, since we're signing the request with your ephemeral key we need to make one exactly 
the same as when following the [initial unlock guide](./ephemeral-key-registration-unlocking-a-door.md).

```json title="JWT Header"
{
 "typ": "jwt",
 "x5c": [
    "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"
 ],
 "alg": "EdDSA"
}
```

This example is populated with my user's certificate chain, yours will be different (remember, you get the certificate 
chain when you 
[register or renew your ephemeral key](../cloud-api/account/register-ephemeral-key-with-secondary-authentication.md)).

Now you've got a header and request body, base64URL encode them both, concatenate with a period character, calculate the
signature with your private ephemeral key, add it onto the end, and you should have a valid sharing request! We've 
glossed over these details because they are identical to the process for unlocking a door.

