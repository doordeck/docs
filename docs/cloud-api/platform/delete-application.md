---
sidebar_position: 5
---

# Delete Application

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Deletes the application.

:::danger
This operation is irreversible!
:::

### HTTP Request

`DELETE https://api.doordeck.com/platform/application/APPLICATION_ID`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID' \
  -X DELETE \
  -H "Authorization: Bearer TOKEN"
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
