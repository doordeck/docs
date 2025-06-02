---
sidebar_position: 8
---

# Verify Email

This endpoint is used to verify a user's email address.

### HTTP Request
`PUT https://api.doordeck.com/account/email/verify`

### Query Parameters

| Parameter | Required | Description                   |
|-----------|----------|-------------------------------|
| code      | true     | Verification code from email. |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl "https://api.doordeck.com/account/email/verify?code=CODE" \
  -X PUT
```

:::info[Remember]
Replace `CODE` with the verification code from the email.
:::

</TabItem>
<TabItem value="response" label="Response">

```markdown showLineNumbers title="HTTP CODE"
200
```

</TabItem>
</Tabs>
