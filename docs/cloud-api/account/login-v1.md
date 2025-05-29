---
sidebar_position: 1
---

# Login (v1)

:::warning
This endpoint is only available to Doordeck registered users.
:::

:::danger[Deprecated]
This endpoint has been deprecated and is due for removal, do not use.
:::

:::warning
This endpoint will return the v2 response for any users registered after 1st March 2025.
:::

This endpoint lets user's attempt to login.

### HTTP Request

`POST https://api.doordeck.com/auth/token`

### Request Parameters

| Parameter | Required | Description          |
|-----------|----------|----------------------|
| email     | true     | User's email address |
| password  | true     | User's password      |

### Response Parameters

| Parameter    | Description                                                       |
|--------------|-------------------------------------------------------------------|
| privateKey   | Base 64 + PKCS8 encoded private key, only visible to legacy users |
| publicKey    | Base 64 encoded public key, only visible to legacy users          |
| authToken    | JSON web token to be used for normal requests                     |
| refreshToken | JSON web token to be used for getting new authentication tokens   |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/auth/token/' \
  -X POST \
  -H 'content-type: application/json' \
  --data-binary '{"email":"EMAIL","password":"PASSWORD"}'
```

:::info[Remember]
Replace `USERNAME` and `PASSWORD` with your credentials.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "privateKey":"base 64 encoded private key",
  "publicKey":"base 64 encoded public key",
  "authToken":"JSON Web Token for authentication",
  "refreshToken":"JSON Web Token for refreshing authentication credentials"
}
```

</TabItem>
</Tabs>
