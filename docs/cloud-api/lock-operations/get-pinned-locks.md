---
sidebar_position: 17
---

# Get Pinned Locks

The endpoint returns a list of the current user's pinned locks.

### HTTP Request
`GET https://api.doordeck.com/device/favourite`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl "https://api.doordeck.com/device/favourite" \
  -H "Authorization: Bearer TOKEN"
```

:::note[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "id": "3cc19730-4603-11e7-a620-79be7967fabd",
    "name": "Reception",
    "colour": "#24BD9A",
    "start": null,
    "end": null,
    "role": "USER",
    "settings": {
      "unlockTime": 5,
      "permittedAddresses": [],
      "defaultName": "Reception",
      "usageRequirements": {},
      "unlockBetweenWindow": null,
      "tiles": [
        "3cc19730-4603-11e7-a620-79be7967fabd"
      ]
    },
    "state": {
      "locked": true,
      "connected": true
    },
    "favourite": true
  },
  {
    "id": "ad8fb800-4def-11e8-9370-170748b9fca8",
    "name": "Web Demo",
    "colour": "#D93951",
    "start": null,
    "end": null,
    "role": "ADMIN",
    "settings": {
      "unlockTime": 7,
      "permittedAddresses": [],
      "defaultName": "Web Demo",
      "usageRequirements": {},
      "unlockBetweenWindow": null,
      "tiles": []
    },
    "state": {
      "locked": true,
      "connected": true
    },
    "favourite": true
  }
]
```

</TabItem>
</Tabs>
