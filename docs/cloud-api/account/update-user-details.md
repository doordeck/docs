---
sidebar_position: 13
---

# Update User Details

This endpoint updates a user's details, currently this is limited to display name.

### HTTP Request
`POST https://api.doordeck.com/account`

### Request Parameters

| Parameter   | Required | Description                 |
|-------------|----------|-----------------------------|
| displayName | true     | User's desired display name |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl "https://api.doordeck.com/account" \
  -H "Authorization: Bearer TOKEN" \
  -X POST \
  -H 'content-type: application/json' \
  --data-binary '{"displayName":"NEW_DISPLAY_NAME"}'
```

:::note[Remember]
* Replace `TOKEN` with your access token.
* Replace `NEW_DISPLAY_NAME` with the new display name to use.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
