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
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl "https://api.doordeck.com/account" \
  -H "Authorization: Bearer TOKEN"
```

:::info[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "publicKey": "User's public key",
  "email": "User's email address",
  "displayName": "User's display name",
  "emailVerified": true or false
}
```

</TabItem>
</Tabs>
