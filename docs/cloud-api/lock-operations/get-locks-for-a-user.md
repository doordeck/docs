---
sidebar_position: 7
---

# Get Locks For A User

This endpoint returns basic user information, including the user's public key and a list of the locks that the user is
enrolled on, the list will only show locks where the current user is an administrator.

### HTTP Request

`GET https://api.doordeck.com/user/USER_ID/`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/user/00000000-0000-0000-0000-000000000000' \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the user's ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "userId": "5a5e6e70-3c51-11e6-9e57-cf40be3013fb",
  "email": "michael@doordeck.com",
  "publicKey": "base 64 encoded public key",
  "displayName": "Michael Barnwell",
  "orphan": false,
  "devices": [
    {
      "deviceId": "ba8fb900-4def-11e8-9370-170748b9fca8",
      "role": "ADMIN"
    },
    {
      "deviceId": "e378ebe0-45f9-11e7-a620-79be7967fabd",
      "role": "ADMIN"
    },
    {
      "deviceId": "eeb74c90-7c1e-11e7-9823-a9f736dac766",
      "role": "ADMIN"
    }
  ]
}
```

</TabItem>
</Tabs>
