---
sidebar_position: 2
---

# Get Locks For Site

This endpoint lists all the locks in a particular site that the user has access to.

### HTTP Request

`GET https://api.doordeck.com/site/SITE_ID/device/`

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/site/00000000-0000-0000-0000-000000000000/device/' \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the site's ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "id": "08aa7b70-30cf-11e8-ba42-6986d3c6ca8e",
    "name": "Demo #1",
    "colour": "#1F5468",
    "start": null,
    "end": null,
    "role": "ADMIN",
    "settings": {
      "unlockTime": 7,
      "permittedAddresses": [],
      "defaultName": "Demo #1",
      "usageRequirements": {},
      "unlockBetweenWindow": null,
      "tiles": [
        "403031a2-7869-4408-9f38-c71ae51b652b"
      ],
      "hidden": false,
      "delay": 0.0,
      "directAccessEndpoints": [
        "https://1-2-3-4.08aa7b70-30cf-11e8-ba42-6986d3c6ca8e.doordeck.direct:27707/device/execute"
      ],
      "capabilities": {
        "OPEN_HOURS": "SUPPORTED",
        "BATCH_SHARING_25": "SUPPORTED",
        "CONFIGURABLE_UNLOCK_DURATION": "SUPPORTED"
      }
    },
    "state": {
      "connected": true
    },
    "favourite": false
  },
  {
    "id": "49b45c50-31da-11e8-8e0f-170748b9fca8",
    "name": "Demo #2",
    "colour": "#55678C",
    "start": null,
    "end": null,
    "role": "ADMIN",
    "settings": {
      "unlockTime": 7,
      "permittedAddresses": [],
      "defaultName": "Demo #2",
      "usageRequirements": {},
      "unlockBetweenWindow": null,
      "tiles": [],
      "capabilities": {
        "OPEN_HOURS": "UNSUPPORTED",
        "BATCH_SHARING_25": "UNSUPPORTED",
        "CONFIGURABLE_UNLOCK_DURATION": "UNSUPPORTED"
      }
    },
    "state": {
      "locked": true,
      "connected": true
    },
    "favourite": false
  }
]
```

</TabItem>
</Tabs>
