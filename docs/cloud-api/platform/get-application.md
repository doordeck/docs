---
sidebar_position: 3
---

# Get Application

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Gets the application specified by application ID.

### HTTP Request

`GET https://api.doordeck.com/platform/application/APPLICATION_ID`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="shell" label="Request">

```shell title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID' \
  -X GET \
  -H "Authorization: Bearer TOKEN"
```

> Replace `APPLICATION_ID` with the application ID.

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
{}
```

</TabItem>
</Tabs>
