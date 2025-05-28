---
sidebar_position: 6
---

# Get Users For A Lock

This endpoint retrieves all users associated with a particular lock.

### HTTP Request

`GET https://api.doordeck.com/device/LOCK_ID/users`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/device/00000000-0000-0000-0000-000000000000/users' \ 
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "userId": "00000000-0000-0000-0000-000000000000",
    "email": "developer@doordeck.com.com",
    "publicKey": "base 64 encoded public key",
    "displayName": "Developer",
    "orphan": false,
    "role": "USER"
  },
  {
    "userId": "00000000-0000-0000-0000-000000000001",
    "email": "administrator@doordeck.com",
    "publicKey": "base 64 encoded public key",
    "displayName": "Administrator",
    "orphan": false,
    "role": "ADMIN"
  }
]
```

</TabItem>
</Tabs>
