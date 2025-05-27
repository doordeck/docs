---
sidebar_position: 18
---

# Get Shareable Locks

This endpoint returns the names and IDs of locks where the current user is an administrator.

### HTTP Request
`GET https://api.doordeck.com/device/shareable`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="shell" label="Request">

```shell title="CURL"
curl "https://api.doordeck.com/device/shareable"
  -H "Authorization: Bearer TOKEN"
```

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
[
  {
    "id": "08aa6b81-30cf-11e8-ba42-6986d3c6ca8e",
    "name": "Demo #1"
  },
  {
    "id": "48dceebb-31cf-11e8-a9fe-6986d3c6ca8e",
    "name": "Demo #2"
  }
]
```

</TabItem>
</Tabs>
