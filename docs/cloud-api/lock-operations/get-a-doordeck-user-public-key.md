---
sidebar_position: 9
---

# Get A Doordeck User’s Public Key

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

This endpoint allows the retrieval of a user's public key along with their ID.
If user is not found, one is created for the specified USER_EMAIL.

### HTTP Request

`POST https://api.doordeck.com/share/invite/USER_EMAIL`

### Query Parameters

| Parameter | Required | Description                                                                            |
|-----------|----------|----------------------------------------------------------------------------------------|
| visitor   | false    | Defaults to false, set to true to direct the visitor to a purely web based experience. |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/share/invite/USER_EMAIL' \
  -X POST \
  -H 'authorization: Bearer TOKEN' \
  -H 'content-type: application/json'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `USER_EMAIL` with the user's email.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "id":"00000000-0000-0000-0000-000000000000",
  "publicKey":"base 64 encoded public key"
}
```

</TabItem>
</Tabs>
