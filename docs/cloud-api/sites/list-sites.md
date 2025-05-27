---
sidebar_position: 1
---

# List Sites

### HTTP Request

`GET https://api.doordeck.com/site/`

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/site/' \
  -H "Authorization: Bearer TOKEN"
```

:::note[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "id": "b188b578-0035-11e8-ba89-0ed5f89f718b",
    "name": "IDEALondon",
    "logoUrl": null,
    "colour": "#666666",
    "longitude": -0.084819,
    "latitude": 51.521966,
    "radius": 20,
    "created": 1516709124.659,
    "updated": 1516709124.659
  },
  {
    "id": "7659e430-4a28-11e8-bf0b-bffab372a82e",
    "name": "Demo",
    "logoUrl": null,
    "colour": "#7AD651",
    "longitude": 0,
    "latitude": 0,
    "radius": 10,
    "created": 1524839827.955,
    "updated": 1524839827.955
  }
]
```

</TabItem>
</Tabs>
