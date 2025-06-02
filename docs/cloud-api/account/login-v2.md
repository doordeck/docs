---
sidebar_position: 1
---

# Login (v2)

:::warning
This endpoint is only available to Doordeck registered users.
:::

This endpoint lets user's attempt to login.

### HTTP Request

`POST https://api.doordeck.com/auth/token`

### Request Headers

| Header | Required | Description                          |
|--------|----------|--------------------------------------|
| Accept | true     | application/vnd.doordeck.api-v2+json |

### Request Parameters

| Parameter | Required | Description          |
|-----------|----------|----------------------|
| email     | true     | User's email address |
| password  | true     | User's password      |

### Response Parameters

| Parameter    | Description                                                     |
|--------------|-----------------------------------------------------------------|
| authToken    | JSON web token to be used for normal requests                   |
| refreshToken | JSON web token to be used for getting new authentication tokens |


### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/auth/token/' \
  -X POST \
  -H "Accept: application/vnd.doordeck.api-v2+json" \
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
  "authToken":"JSON Web Token for authentication",
  "refreshToken":"JSON Web Token for refreshing authentication credentials"
}
```

</TabItem>
</Tabs>
