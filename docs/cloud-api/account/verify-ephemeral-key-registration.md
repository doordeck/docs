---
sidebar_position: 8
---

# Verify Ephemeral Key Registration

This endpoint is used to check the verification code sent to a use, it requires the ephemeral key sign the verification
code so that Doordeck is sure the same ephemeral key is used.

### HTTP Request
`POST https://api.doordeck.com/auth/certificate/check`

### Request Parameters

| Parameter             | Required | Description                                                              |
|-----------------------|----------|--------------------------------------------------------------------------|
| verificationSignature | true     | Base64 encoded signature of the verification code with the ephemeral key |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
# Calculate the signature of the authentication code using the previously generated private key
echo -n "AUTHENTICATION_CODE" > code.txt
SIGNATURE=$(openssl pkeyutl -sign -inkey private.key -rawin -in code.txt | base64)

curl "https://api.doordeck.com/auth/certificate/check" \
  -X POST \
  -H "Authorization: Bearer TOKEN" \
  -H 'content-type: application/json' \
  --data-binary '{"verificationSignature":"'${SIGNATURE}'"}' 
```
:::info[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "certificateChain": ["List of base64 encoded DER X509 certificates forming a complete certificate chain"],
  "userId": "Doordeck identifier for the user"
}
```

</TabItem>
</Tabs>
