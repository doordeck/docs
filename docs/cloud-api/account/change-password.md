---
sidebar_position: 11
---

# Change Password

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

This endpoint is used to allow a user to change their password.

### HTTP Request
`POST https://api.doordeck.com/account/password`

### Request Parameters

| Parameter   | Required | Description                  |
|-------------|----------|------------------------------|
| oldPassword | true     | User's old password.         |
| newPassword | true     | User's desired new password. |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl "https://api.doordeck.com/account/password" \
  -H "Authorization: Bearer TOKEN" \
  -X POST \
  -H 'content-type: application/json' \
  --data-binary '{"oldPassword":"OLD_PASSWORD","newPassword":"NEW_PASSWORD"}'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `OLD_PASSWORD` with the users' current password and `NEW_PASSWORD` with their desired password.
:::

</TabItem>
<TabItem value="response" label="Response">

```markdown showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
