---
sidebar_position: 5
---

# Get Audit For A User

This endpoint retrieves all log events associated with a particular user, it uses the same events as listed in the v2 audit trail endpoint.

### HTTP Request

`GET https://api.doordeck.com/user/USER_ID/log?start=0000&end=0000`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/user/00000000-0000-0000-0000-000000000000/log?start=0000&end=0000' \
  -H "Accept: application/vnd.doordeck.api-v2+json" \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the user's ID.
* Replace `start=0000` & `end=0000` with Epoch date range, e.g. start=1593558000&end=1610495999
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "deviceId": "00000000-0000-0000-0000-000000000001",
    "timestamp": 1509481411,
    "type": "LOCK_SHARED",
    "issuer": {
      "userId": "00000000-0000-0000-0000-000000000002"
    },
    "subject": {
      "userId": "00000000-0000-0000-0000-000000000003",
      "email": "info@doordeck.com"
    },
    "rejected": false
  },
  {
    "deviceId": "00000000-0000-0000-0000-000000000001",
    "timestamp": 1509035275,
    "type": "DOOR_UNLOCK",
    "issuer": {
      "userId": "00000000-0000-0000-0000-000000000002"
    },
    "rejected": false
  }
]
```

</TabItem>
</Tabs>
