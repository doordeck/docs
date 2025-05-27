---
sidebar_position: 6
---

# Associate multiple locks (devices) to a single tile

The endpoints links multiple locks to a single tile. The current user must be an administrator of the locks and also a site administrator.
This endpoint is only available from API version 2 onwards.

The behavior of this endpoint is as follows:
- given set of devices is not empty, the tile will be associated to these given devices, disassociating from any other devices not in the set
- given set of devices is empty, the tile will be disassociated from all devices

### HTTP Request

`PUT https://api.doordeck.com/tile/{tileId}`

### Request Headers

| Header | Required | Description                          |
|--------|----------|--------------------------------------|
| Accept | true     | application/vnd.doordeck.api-v2+json |

### Request Parameters

| Parameter | Required | Description                                     |
|-----------| -------- |-------------------------------------------------|
| tileId    | true     | Id the tile to which the devices will be mapped |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000' \
  -X PUT \
  -H 'Authorization: Bearer TOKEN' \
  -H 'Accept: application/vnd.doordeck.api-v2+json' \
  --data-binary '{ \
    "siteId": "SITE_ID", \
    "devices": ["DEVICE_ID_1", "DEVICE_ID_2", "DEVICE_ID_3"] \
  }'
```

:::note[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the tile ID to which you want to associate multiple locks.
* Replace `SITE_ID` with the site ID to which the tile belongs.
* Replace `DEVICE_ID_1`, `DEVICE_ID_2`, `DEVICE_ID_3` with the device IDs to be associated to the tile.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "siteId": "00000000-0000-0000-0000-000000000000",
  "devices": [
    "00000000-0000-0000-0000-000000000000",
    "00000000-0000-0000-0000-000000000000",
    "00000000-0000-0000-0000-000000000000"
  ]
}
```

</TabItem>
</Tabs>

