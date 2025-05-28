---
sidebar_position: 10
---

# Lookup User Public Key (v1)

This endpoint allows retrieval of a user's public key, it provides additional flexibility to third-party application
developers by allowing querying via email, telephone, user identifier (both internal and external) and by complete
identity (encrypted).

Queries against this endpoint are filtered by the third-party's user pool, in other words, this call will only return
users belonging to the same application as specified in the auth token.

This endpoint accepts a single JSON key (multiple keys cannot be used) which can be one of the following:

| Field      | Description                                     |
|------------|-------------------------------------------------|
| email      | Email address                                   |
| telephone  | E.164 formatted telephone                       |
| localKey   | Doordeck identifier for a user (UUID)           |
| foreignKey | Third-party application's identifier for a user |
| identity   | Encrypted OpenID token of user                  |

The first four query keys, ```email```, ```telephone```, ```localKey``` and ```foreignKey``` are read only - these will
return a 404 error if the user is not known to Doordeck.

The remaining query key, ```identity```, is used to specify the full identity of the user who is the subject of the
query, this will mean the user is created if they don't exist and will always return a response. When using
```identity```, the specified OpenID token must be encrypted so it cannot be abused as an authentication token - it
should be encrypted using JSON Web Encryption (JWE) using the RSA key Doordeck generates for the particular third-party
application.

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/directory/query' \
  -X POST \
  -H 'authorization: Bearer TOKEN' \
  -H 'content-type: application/json' \
  --data-binary '{"email":"USER_EMAIL"}'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `USER_EMAIL` with the user's email.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "id":"00000000-0000-0000-0000-000000000000",
  "publicKey":"base 64 encoded public key"
}
```

</TabItem>
</Tabs>
