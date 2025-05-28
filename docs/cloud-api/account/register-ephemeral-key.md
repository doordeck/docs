---
sidebar_position: 6
---

# Register Ephemeral Key

This endpoint is used to register the ephemeral key for third-party application users', it returns a certificate chain
with the user's key as the subject of the leaf certificate. 

Only Ed25519 public keys are accepted by this endpoint, they can either be the native 32 byte public key Base 64 
encoded or specified as a Base 64 DER encoded key as defined in [RFC8410](https://tools.ietf.org/html/rfc8410). 

This endpoint may require a secondary authentication check before producing a certificate chain for the user, it will 
indicate this by returning a 423 error.

The certificate chain returned should be used in the ```x5c``` field when performing signed requests such as unlocking.

### HTTP Request
`POST https://api.doordeck.com/auth/certificate`

### Request Parameters

| Parameter    | Required | Description                          |
|--------------|----------|--------------------------------------|
| ephemeralKey | true     | Base64 encoded ephemeral Ed25519 key |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl "https://api.doordeck.com/auth/certificate" \
  -X POST \
  -H "Authorization: Bearer TOKEN" \
  -H 'content-type: application/json' \
  --data-binary '{"ephemeralKey":"Base64 encoded Ed25519 public key"}' 
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `Base64 encoded Ed25519 public key` with the user's ephemeral key.
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
