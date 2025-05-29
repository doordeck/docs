---
sidebar_position: 5
---

# Disassociate Tile From Lock

The endpoint removes the relationship between a tile and a lock, the tile can then be reassigned to another lock.

### HTTP Request

`DELETE https://api.doordeck.com/device/DEVICE_ID/tile/TILE_ID/`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/tile/00000000-0000-0000-0000-000000000001' \
  -X DELETE \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the device ID.
* Replace `00000000-0000-0000-0000-000000000001` with the tile ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```markdown showLineNumbers title="HTTP CODE"
202
```

</TabItem>
</Tabs>

