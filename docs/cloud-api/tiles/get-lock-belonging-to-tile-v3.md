---
sidebar_position: 3
---

# Get Lock Belonging To Tile (v3)

This endpoint identifies which lock belongs to the specific tile.

### HTTP Request

`GET https://api.doordeck.com/tile/TILE_ID/`

### Request Headers

| Header | Required | Description                          |
|--------|----------|--------------------------------------|
| Accept | true     | application/vnd.doordeck.api-v3+json |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000/' \
  -H "Accept: application/vnd.doordeck.api-v3+json" \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the tile ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "siteId": "site-uuid",
  "tileId": "tile-uuid",
  "deviceIds": [
    "device-uuid-1",
    "device-uuid-2"
  ]
}
```

</TabItem>
</Tabs>

