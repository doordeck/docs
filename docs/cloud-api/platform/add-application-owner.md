---
sidebar_position: 12
---

# Add Application Owner

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Adds a new owner to an existing application.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/owner`

### Request Parameters

| Parameter     | Required | Description                    |
|---------------|----------|--------------------------------|
| applicationId | true     | Application ID to add owner to |

### Request Body

| Parameter | Required | Description             |
|-----------|----------|-------------------------|
| userId    | true     | User ID to add as owner |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/owner' \
  -X POST \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer TOKEN' \
  --data-binary '{"userId": "00000000-0000-0000-0000-000000000000"}'
```

:::note[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
* Replace `00000000-0000-0000-0000-000000000000` with the ID of owner to be added.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
