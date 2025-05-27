---
sidebar_position: 5
---

# Logout

:::warning
This endpoint is only available when the authentication token used specifies a session ID (sid)
:::

This endpoint destroys a session associated with an authentication token and any associated refresh token.

### HTTP Request
`POST https://api.doordeck.com/auth/token/destroy`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl "https://api.doordeck.com/auth/token/destroy" \
  -X POST \
  -H "Authorization: Bearer TOKEN"
```

:::note[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
