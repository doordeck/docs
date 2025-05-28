---
sidebar_position: 1
---

# Get Lock Belonging To Tile (v1)

:::danger[Deprecated]
This endpoint is marked for deprecation. Please refer to v3 for the latest version.
:::

This endpoint identifies which lock belongs to the specific tile.

### HTTP Request

`GET https://api.doordeck.com/tile/TILE_ID/`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/tile/00000000-0000-0000-0000-000000000000/' \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the tile ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
404 if no tile is known or 303 with the Location header set to the value of the lock
```

</TabItem>
</Tabs>
