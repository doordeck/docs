---
sidebar_position: 2
---

# List applications

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Lists all application's owned by the current user

### HTTP Request

`GET https://api.doordeck.com/platform/application`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application' \
  -X GET \
  -H "Authorization: Bearer TOKEN"
```

:::note[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{}
```

</TabItem>
</Tabs>
