---
sidebar_position: 4
---

# Associate Tile With Lock

The endpoints links a tile to a lock; the current user must be an administrator of the lock and the tile must not be
associated to any other locks.

### HTTP Request

`PUT https://api.doordeck.com/device/DEVICE_ID/tile/TILE_ID/`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/tile/00000000-0000-0000-0000-000000000001' \
  -X PUT \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the device ID.
* Replace `00000000-0000-0000-0000-000000000001` with the tile ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
202
```

</TabItem>
</Tabs>
