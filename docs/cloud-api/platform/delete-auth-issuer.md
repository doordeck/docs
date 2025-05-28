---
sidebar_position: 9
---

# Delete Auth Issuer

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Deletes an auth issuer.

### HTTP Request

`DELETE https://api.doordeck.com/platform/application/APPLICATION_ID/auth/issuer`

### Request Parameters

| Parameter | Required | Description |
|-----------|----------|-------------|
| url       | true     | Issuer      |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/auth/issuer' \
  -X DELETE \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer TOKEN' \
  --data-binary '{"url": "AUTH_ISSUER"}'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
* Replace `AUTH_ISSUER` with the auth issuer to be removed.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
