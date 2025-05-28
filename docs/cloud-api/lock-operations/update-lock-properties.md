---
sidebar_position: 8
---

# Update Lock Properties

This endpoint allows the name, favourite flag and colour to be updated for an existing lock.

### HTTP Request

`PUT https://api.doordeck.com/device/LOCK_ID`

### Request Parameters

| Parameter | Required | Description                          |
|-----------|----------|--------------------------------------|
| name      | false    | Update the user's alias for the lock |
| favourite | false    | Flag the lock as a favourite         |
| colour    | false    | Update the colour of the lock        |
| settings  | false    | Update global settings for the lock  |

The settings object is formed of the following fields

| Parameter             | Required | Description                                                                                                    |
|-----------------------|----------|----------------------------------------------------------------------------------------------------------------|
| txBeaconRssi          | false    | Update the iBeacon sensitivity (Deprecated)                                                                    |
| rxBeaconRssi          | false    | Update the iBeacon sensitivity (Deprecated)                                                                    |
| proximityUnlock       | false    | Control if the lock can be unlocked via a touch action (Deprecated)                                            |
| defaultName           | false    | Set the default name for all users who have not set a custom alias                                             |
| permittedAddress      | false    | A complete list of permitted IP addresses for performing actions on the door (public IP addresses)             |
| delay                 | false    | A time in milliseconds to delay the UI countdown action, for slow locks (Deprecated)                           |
| hidden                | false    | Hides a device from the favourite list                                                                         |
| usageRequirements     | false    | An object containing usage requirements of the lock, see below.                                                |
| directAccessEndpoints | false    | A list of endpoints that can be used to communicate directly with Doordeck Fusion for faster unlock operations |
| capabilities          | false    | A map of supported and unsupported capabilities                                                                |

The usage requirements is formed of the following fields

| Parameter | Required | Description                                                       |
|-----------|----------|-------------------------------------------------------------------|
| time      | False    | List of time requirements, see time requirement definition below. |
| location  | False    | GPS restriction, see location requirement definition below.       |

The time requirements is formed of a list, each containing the following fields

| Parameter | Required | Description                                                                        |
|-----------|----------|------------------------------------------------------------------------------------|
| start     | true     | Local time, (HH:mm) describing the start of a permitted time window                |
| end       | true     | Local time, (HH:mm) describing the end of a permitted time window                  |
| timezone  | true     | Timezone, e.g. Europe/London, describing what hours the start and end are valid in |
| days      | true     | List of days the time window applies, e.g. MONDAY, TUESDAY                         |

The location requirements is formed of the following fields

| Parameter | Required | Description                                                                                         |
|-----------|----------|-----------------------------------------------------------------------------------------------------|
| latitude  | true     | Latitude of the center point                                                                        |
| longitude | true     | Longitude of the center point                                                                       |
| enabled   | false    | Flag indicating if the location requirement is enabled                                              |
| radius    | false    | Indicates what size the bubble should be where the location is considered matched, defaults to 100m |
| accuracy  | false    | Indicates how accurate the phone's GPS must be to be considered matched, defaults to 200m           |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000' \
  -X PUT \
  -H "Authorization: Bearer TOKEN" \
  -H 'content-type: application/json' \
  --data-binary '{"name":"Home","favourite":false,"colour":"#ffggaa"}'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
200
```

</TabItem>
</Tabs>
