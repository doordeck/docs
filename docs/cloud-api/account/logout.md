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
<TabItem value="shell" label="Request">

```shell title="CURL"
curl "https://api.doordeck.com/auth/token/destroy"
  -H "Authorization: Bearer TOKEN"
```

> Make sure to replace `REFRESH_TOKEN` with your refresh token.

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"

```

</TabItem>
</Tabs>