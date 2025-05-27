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
<TabItem value="shell" label="Request">

```shell title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/owner' \
   -X POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer TOKEN' \
  --data-binary '{"userId": "00000000-0000-0000-0000-000000000000"}'
```

> - Replace `00000000-0000-0000-0000-000000000000` with the new owner's ID
> - Replace `APPLICATION_ID` with the application ID.

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
{}
```

</TabItem>
</Tabs>
