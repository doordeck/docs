---
sidebar_position: 11
---

# Lookup User Public Key (v2)

This endpoint expands upon the v1 endpoint by allowing multiple query keys to be used in a single request, this allows
for batches of up to 25 users to be queried in a single request.

| Field      | Description                                     |
|------------|-------------------------------------------------|
| email      | Email addresses                                 |
| telephone  | E.164 formatted telephone numbers               |
| localKey   | Doordeck identifier for a user (UUID)           |
| foreignKey | Third-party application's identifier for a user |

### HTTP Request

`POST https://api.doordeck.com/directory/query`

### Request Headers

| Header | Required | Description                          |
|--------|----------|--------------------------------------|
| Accept | true     | application/vnd.doordeck.api-v2+json |

### Request Parameters

The request body must have one and only one of the following fields.

| Parameter  | Required | Description                                      |
|------------|----------|--------------------------------------------------|
| email      | false    | Email addresses                                  |
| telephone  | false    | E.164 formatted telephone numbers                |
| localKey   | false    | Doordeck identifier for users (UUID)             |
| foreignKey | false    | Third-party application's identifier for a users |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/directory/query' \
    -H 'Accept: application/vnd.doordeck.api-v2+json' \
    -H 'Content-Type: application/json' \
    -H 'Authorization: Bearer TOKEN' \
    --data-raw '{
        "email": ["example1@doordeck.com", "example2@doordeck.com"],
        "localKey": ["ee03c470-c080-11e6-9b35-cb2329105e85"],
        "foreignKey": ["5a5f6e80-3c51-11e6-9e57-cf40be3013fb"]
    }'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "email": "example1@doordeck.com",
    "id": "5a5f6e80-3c51-11e6-9e57-cf40be3013fb",
    "publicKey": "MIIBIjANBgk...IDAQAB"
  },
  {
    "email": "example2@doordeck.com",
    "id": "ee03c470-c080-11e6-9b35-cb2329105e85",
    "publicKey": "MIIBIjANBgk...IDAQAB"
  },
  {
    "foreignKey": "5a5f6e80-3c51-11e6-9e57-cf40be3013fb",
    "id": "5a5f6e80-3c51-11e6-9e57-cf40be3013fb",
    "publicKey": "MIIBIjANBgk...IDAQAB"
  },
  {
    "id": "ee03c470-c080-11e6-9b35-cb2329105e85",
    "publicKey": "MIIBIjANBgk...IDAQAB"
  }
]
```

</TabItem>
</Tabs>
