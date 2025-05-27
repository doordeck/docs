---
sidebar_position: 11
---

# Remove CORS Domain

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Remove CORS domain.

### HTTP Request

`DELETE https://api.doordeck.com/platform/application/APPLICATION_ID/cors`

### Request Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| url       | true     | CORS Domain |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/cors' \
  -X DELETE \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer TOKEN' \
  --data-binary '{"url": "CORS_URL"}'
```

:::note[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
* Replace `CORS_URL` with the CORS domain to be removed.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
