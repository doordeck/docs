---
sidebar_position: 14
---

# Delete Account

Deletes the currently logged in user's account, associated with the application the user is logged in.

:::danger
This operation is irreversible!
:::

### HTTP Request

`DELETE https://api.doordeck.com/account`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/account' \
  -X DELETE \
  -H 'Authorization: Bearer TOKEN'
```

:::info[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json title="HTTP CODE"
204
```

</TabItem>
</Tabs>
