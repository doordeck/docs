---
sidebar_position: 15
---

# Revoke Access To A Lock

This endpoint allows multiple operations to be performed on locks. Requests to this endpoint must be signed and formed as a JSON web token.
This section explains how to revoke access to a lock, this can also be used to delete a lock from the current users account.

### HTTP Request

`POST https://api.doordeck.com/device/LOCK_ID/execute`

:::tip[Success]
If a request expires within the next 60 seconds, a 200 is returned upon success, if a request expires in more than 60 seconds, a 202 is returned to indicate the request has been queued for the device.
:::

### Request Parameters

import SecureOperationParameters from './partials/_secure-operation-params.md';

<SecureOperationParameters name="Secure operation parameters" />

The operation object definition is as follows

| Parameter | Required | Description                |
|-----------|----------|----------------------------|
| type      | true     | Must be `REMOVE_USER`      |
| users     | true     | List of user IDs to remove |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';
import CodeBlock from '@theme/CodeBlock';
import Setup from '!!raw-loader!./partials/shell/_secure-operation-setup.sh';
import Execute from '!!raw-loader!./partials/shell/_secure-operation-execute.sh';

<Tabs>
<TabItem value="request" label="Request">

<CodeBlock language="shell" title="CURL">

{`${Setup}

BODY=$(
  jq -n \\
    --arg iss "$USER_ID" \\
    --arg sub "$DEVICE_ID" \\
    --arg jti "$(uuidgen)" \\
    --arg user "11111111-1111-1111-1111-111111111111" \\
    --argjson nbf "$(date +%s)" \\
    --argjson iat "$(date +%s)" \\
    --argjson exp "$(($(date +%s) + 60))" \\
    '{
      iss: $iss,
      sub: $sub,
      jti: $jti,
      nbf: $nbf,
      iat: $iat,
      exp: $exp,
      operation: {
        type: "REMOVE_USER",
        users: [$user]
      }
    }'
)


${Execute}`}

</CodeBlock>

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.
* Replace `11111111-1111-1111-1111-111111111111` with the revoked user's ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{}
```

</TabItem>
</Tabs>
