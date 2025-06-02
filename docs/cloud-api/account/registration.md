---
sidebar_position: 2
---

# Registration

:::info
To preserve compatibility, this endpoint responds to requests for v1 through v3.
:::

This endpoint allows users to register for a Doordeck account; the call will fail with a 409 conflict error if there is 
a pending invite (unless force is set to true).

### HTTP Request

`POST https://api.doordeck.com/auth/register`

### Request Headers

| Header | Required | Description                          |
|--------|----------|--------------------------------------|
| Accept | true     | application/vnd.doordeck.api-v3+json |

### Request Parameters

| Parameter   | Required | Description                               |
|-------------|----------|-------------------------------------------|
| email       | true     | Email address to register.                |
| password    | true     | Password for access to account.           |
| displayName | false    | User's display name (e.g. their fullname) |

### Query Parameters

| Parameter | Required | Description                                                                                |
|-----------|----------|--------------------------------------------------------------------------------------------|
| force     | false    | Boolean flag to indicate if a pending invite should be discarded and a new account created |

:::info[Validation Email]
A validation email will be dispatched to the user's email address upon successful registration.
:::

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl "https://api.doordeck.com/auth/register" \
  -X POST \
  -H "Accept: application/vnd.doordeck.api-v3+json" \
  -H 'content-type: application/json' \
  --data-binary '{"email":"EMAIL","password":"PASSWORD"}'
```

:::info[Remember]
Replace `USERNAME` and `PASSWORD` with your credentials.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "authToken":"JSON Web Token for authentication",
  "refreshToken":"JSON Web Token for refreshing authentication credentials"
}
```

</TabItem>
</Tabs>
