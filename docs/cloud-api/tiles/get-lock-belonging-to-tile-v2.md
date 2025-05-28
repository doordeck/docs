---
sidebar_position: 2
---

# Get Lock Belonging To Tile (v2)

:::warning[Deprecated]
This endpoint is marked for deprecation. Please refer to v3 for the latest version.
:::

This endpoint identifies which lock belongs to the specific tile.

### HTTP Request

`GET https://api.doordeck.com/tile/TILE_ID/`

### Request Headers

| Header | Required | Description                          |
|--------|----------|--------------------------------------|
| Accept | true     | application/vnd.doordeck.api-v2+json |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000/' \
  -H "Accept: application/vnd.doordeck.api-v2+json" \
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
  "deviceId": "device-uuid"
}
```

</TabItem>
</Tabs>
