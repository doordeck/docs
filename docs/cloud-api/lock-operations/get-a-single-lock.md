---
sidebar_position: 2
---

# Get A Single Lock

This endpoint retrieves information about a specific lock, its usage is preferred over the list lock call for performance reasons.

### HTTP Request

`GET https://api.doordeck.com/device/LOCK_ID`

Replace `LOCK_ID` with the appropriate lock ID.

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000' \
  -H "Accept: application/vnd.doordeck.api-v3+json" \
  -H "Authorization: Bearer TOKEN"
```

:::note[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "id": "00000000-0000-0000-0000-000000000001",
  "name": "Home",
  "lastOperation": 1494786493,
  "colour": "#57355D",
  "role": "ADMIN",
  "settings": {
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
    },
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
  "state": {
    "locked": true,
    "connected": true,
    "duration": 10
  },
  "favourite": true,
  "unlockTime": 10,
  "start":null,
  "end":null
}
```

</TabItem>
</Tabs>
