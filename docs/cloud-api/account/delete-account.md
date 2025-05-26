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
<TabItem value="shell" label="Request">

```shell title="CURL"
curl 'https://api.doordeck.com/account' \
   -X DELETE \
  --header 'Authorization: Bearer TOKEN'
```

> Make sure to replace `TOKEN` with your access token.

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
{}
```

</TabItem>
</Tabs>
