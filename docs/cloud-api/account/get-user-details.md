---
sidebar_position: 12
---

# Get User Details

This endpoint returns information about the currently logged in user

### HTTP Request
`GET https://api.doordeck.com/account`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="shell" label="Request">

```shell title="CURL"
curl "https://api.doordeck.com/account"
  -H "Authorization: Bearer TOKEN"
```

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
{
  "publicKey": "User's public key",
  "email": "User's email address",
  "displayName": "User's display name",
  "emailVerified": true or false
}
```

</TabItem>
</Tabs>
