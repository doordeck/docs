---
sidebar_position: 3
---

# Refresh Token

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

This endpoint refreshes a users' authentication token using their refresh token. Refresh tokens cannot be used for standard requests and have a very long life compared with an authentication token.

### HTTP Request

`POST https://api.doordeck.com/auth/token/refresh`

:::info
A refresh token should be used in place of an authentication token for this request.
:::

:::info
The <code>refreshToken</code> field is optionally returned, if a new refresh token should be stored, otherwise it will not be present.
:::

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl -X POST "https://api.doordeck.com/auth/token/refresh" \
  -H "Authorization: Bearer REFRESH_TOKEN"
```

:::info[Remember]
Replace `REFRESH_TOKEN` with your refresh token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "authToken":"JSON Web Token for authentication",
  "refreshToken":"(Optional) JSON Web Token for refreshing authentication credentials"
}
```

</TabItem>
</Tabs>
