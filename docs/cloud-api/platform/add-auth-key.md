---
sidebar_position: 7
---

# Add Auth Key

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Adds a new auth key to the permitted auth keys for user's of this application, can be RSA, EC or Ed25519.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/auth/key`

### Request Parameters

Key should be in [JSON Web Key format (JWK)](https://mkjwk.org), key must have a unique key ID (```kid```) field.

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
  curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/auth/key' \
  -X POST \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer TOKEN' \
  --data-binary '{ \
    "kty": "OKP", \
    "d": "9Y6khJlqBvRIMzem9M6Q22l98S4Me9rxQC0YXoiLQZU", \
    "crv": "Ed25519", \
    "kid": "dcd20030-36a9-44f1-b14d-841a20ee5666", \
    "x": "z1NW_Tnj1zhCgAybANrPiKoCvNZ9ZqDyEi0EhVH1BQE", \
    "alg": "EdDSA" \
  }'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
