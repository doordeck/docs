---
sidebar_position: 13
---

# Remove Application Owner

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Removes an owner from an existing application.

### HTTP Request

`DELETE https://api.doordeck.com/platform/application/APPLICATION_ID/owner`

### Request Parameters

| Parameter     | Required | Description                         |
|---------------|----------|-------------------------------------|
| applicationId | true     | Application ID to remove owner from |

### Request Body

| Parameter | Required | Description                    |
|-----------|----------|--------------------------------|
| userId    | true     | User ID to be removed as owner |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/owner' \
  -X DELETE \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer TOKEN' \
  --data-raw '{"userId": "00000000-0000-0000-0000-000000000000"}'
```

:::note[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
* Replace `00000000-0000-0000-0000-000000000000` with the ID of owner to be removed.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
