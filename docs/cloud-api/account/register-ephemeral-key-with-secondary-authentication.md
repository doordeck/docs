---
sidebar_position: 7
---

# Register Ephemeral Key With Secondary Authentication

This endpoint is used to register ephemeral keys for users, it will start a secondary authentication flow using email,
SMS, or telephone - the service will pick the most appropriate method based on the contents of the provided
auth token or it can be specified as a query parameter.

### HTTP Request
`POST https://api.doordeck.com/auth/certificate/verify`

### Request Parameters

| Parameter    | Required | Description                          |
|--------------|----------|--------------------------------------|
| ephemeralKey | true     | Base64 encoded ephemeral Ed25519 key |

### Query Parameters

| Parameter | Required | Description                  |
|-----------|----------|------------------------------|
| method    | false    | One of EMAIL, TELEPHONE, SMS |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
# Generate a new ephemeral key
openssl genpkey -algorithm ED25519 -out private.key

# Format the public key for use with the JSON request
PUBLIC_KEY=`openssl pkey -in private.key -pubout -outform DER -out - | base64`

curl "https://api.doordeck.com/auth/certificate/verify" \
  -X POST \
  -H "Authorization: Bearer TOKEN" \
  -H 'content-type: application/json' \
  --data-binary '{"ephemeralKey":"'${PUBLIC_KEY}'"}' 
```

:::info[Remember]
* Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
