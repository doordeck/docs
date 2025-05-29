---
sidebar_position: 4
---

# Update Application

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Updates any of the fields defined in the initial [create application](./create-application.md) request.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID' \
  -X POST \
  -H "Authorization: Bearer TOKEN" \
  -H 'content-type: application/json' \
  --data-binary '{"name":"My Amazing Updated App"}'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```markdown showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
