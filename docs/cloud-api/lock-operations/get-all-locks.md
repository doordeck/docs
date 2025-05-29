---
sidebar_position: 1
---

# Get All Locks

This endpoint retrieves all locks a user has access to.

### HTTP Request

`GET https://api.doordeck.com/device`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/device' \
  -H "Authorization: Bearer TOKEN"
```
:::info[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "id":"00000000-0000-0000-0000-000000000000",
    "name":"Home",
    "lastOperation": 1494786493,
    "colour": "#57355D",
    "role": "ADMIN",
    "settings":
    {
      "txBeaconRssi": -45,
      "rxBeaconRssi": -80,
      "unlockTime": 10,
      "proximityUnlock": true,
      "permittedAddresses": [],
      "defaultName": "Home",
      "usageRequirements": {},
      "delay": 0,
      "hidden": false,
      "directAccessEndpoints": [
        "https://1-2-3-4.08aa7b70-30cf-11e8-ba42-6986d3c6ca8e.doordeck.direct:27707/device/execute"
      ],
      "capabilities": {
        "OPEN_HOURS": "SUPPORTED",
        "BATCH_SHARING_25": "SUPPORTED",
        "CONFIGURABLE_UNLOCK_DURATION": "SUPPORTED"
      }
    },
    "state":
    {
      "locked":true,
      "connected":true,
      "duration":10
    },
    "favourite": true,
    "unlockTime":10
  },
  {
    "id":"00000000-0000-0000-0000-000000000001",
    "name":"Office",
    "lastOperation": 1494786333,
    "colour": "#FFAACC",
    "role": "USER",
    "settings":
    {
      "txBeaconRssi": 0,
      "rxBeaconRssi": 0,
      "unlockTime": 5,
      "proximityUnlock": false,
      "permittedAddresses": [
        "33.44.55.66"
      ],
      "defaultName": "Super office",
      "usageRequirements": {},
      "delay": 0,
      "unlockBetweenWindow": {
        "start": "08:00",
        "end": "14:35",
        "timezone": "Europe/London",
        "days": [
          "WEDNESDAY"
        ],
        "exceptions": []
      }
    },
    "state":
    {
      "locked":true,
      "connected":true,
      "duration":5
    },
    "favourite": true,
    "unlockTime":5,
    "start":null,
    "end":null
  }
]
```

</TabItem>
</Tabs>
