---
sidebar_position: 1
---

# Get Lock Belonging To Tile (v1)

:::warning
This endpoint is marked for deprecation. Please refer to v3 for the latest version.
:::

This endpoint identifies which lock belongs to the specific tile.

### HTTP Request

`GET https://api.doordeck.com/tile/TILE_ID/`

Replace `TILE_ID` with the appropriate tile ID.

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="shell" label="Request">

```shell title="CURL"
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000/'
  -H "Authorization: Bearer TOKEN"
```

> Replace `00000000-0000-0000-0000-000000000000` with the tile ID.
> The above command returns 404 if no tile is known, or a see other 303 with the `Location` header set to the value of
the lock

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
{}
```

</TabItem>
</Tabs>
