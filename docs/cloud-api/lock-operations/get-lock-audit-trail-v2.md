---
sidebar_position: 4
---

# Get Lock Audit Trail (v2)

This endpoint retrieves all log events associated with a particular lock, it includes additional details over v1.

### HTTP Request

`GET https://api.doordeck.com/device/LOCK_ID/log?start=0000&end=0000`

### Request Headers

| Header | Required | Description                          |
|--------|----------|--------------------------------------|
| Accept | true     | application/vnd.doordeck.api-v2+json |

### Event Types
The call returns an enum of event types:

| Type                  | Description                                                |
|-----------------------|------------------------------------------------------------|
| DOOR_OPEN             | The lock's monitor shows the door is open                  |
| DOOR_CLOSE            | The lock's monitor shows the door is closed                |
| DOOR_UNLOCK           | The lock has changed to the unlock stated                  |
| DOOR_LOCK             | The lock has changed to the locked state                   |
| OWNER_ASSIGNED        | The lock's owner has been updated                          |
| DEVICE_CONNECTED      | Lock has connected to Doordeck platform                    |
| DEVICE_DISCONNECTED   | Lock has disconnected from Doordeck platform               |
| LOCK_SHARED           | The lock's access has been shared to a new user            |
| LOCK_REVOKED          | Access to the lock has been revoked for the specified user |
| USER_PROMOTED         | A user was promoted to an administrator                    |
| USER_DEMOTED          | An administrator was demoted to a user                     |
| SETTING_CHANGED       | A lock setting has been changed                            |
| TILE_ASSOCIATED       | A tile has been associated with a device                   |
| TILE_DISASSOCIATED    | A tile has been dissociated from a device                  |
| DEVICE_DECOMMISSIONED | A device has been decommissioned                           |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/log?start=0000&end=0000' \
  -H "Accept: application/vnd.doordeck.api-v2+json" \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.
* Replace `start=0000` & `end=0000` with Epoch date range, e.g. start=1593558000&end=1610495999
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "timestamp": 1494267549,
    "type": "DOOR_LOCK",
    "user": null,
    "email": null,
    "displayName": null,
    "message": "Door locked"
  },
  {
    "timestamp": 1494267539,
    "type": "DOOR_UNLOCK",
    "user": null,
    "email": null,
    "displayName": null,
    "message": "Door unlocked"
  },
  {
    "timestamp": 1494267534,
    "type": "DOOR_UNLOCK",
    "user": "00000000-0000-0000-0000-000000000000",
    "email": "info@doordeck.com",
    "displayName": "Doordeck User",
    "message": "Door unlocked"
  }
]
```

</TabItem>
</Tabs>
