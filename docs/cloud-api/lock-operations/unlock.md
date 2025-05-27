---
sidebar_position: 12
---

# Unlock

This endpoint allows a device to be unlocked. Requests to this endpoint must be signed and formed as a JSON web token (JWT).

### HTTP Request

`POST https://api.doordeck.com/device/LOCK_ID/execute`

Replace `LOCK_ID` with the appropriate lock ID.

:::tip[Success]
If a request expires within the next 60 seconds, a 200 is returned upon success, if a request expires in more than 60 seconds, a 202 is returned to indicate the request has been queued for the device.
:::

### Request Parameters

import SecureOperationParameters from './partials/_secure-operation-params.md';

<SecureOperationParameters name="Secure operation parameters" />

The operation object definition is as follows

| Parameter | Required | Description           |
|-----------|----------|-----------------------|
| type      | true     | Must be `MUTATE_LOCK` |
| locked    | true     | Set to `true`         |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';
import CodeBlock from '@theme/CodeBlock';
import SecureOperationSetup from '!!raw-loader!./partials/shell/_secure-operation-setup.sh';
import SecureOperationExecute from '!!raw-loader!./partials/shell/_secure-operation-execute.sh';
import x from '!!raw-loader!./partials/shell/_secure-operation-unlock-body.sh';

<Tabs>
<TabItem value="shell" label="Request">

<CodeBlock language="shell" title="CURL">

{SecureOperationSetup}

{x}

{SecureOperationExecute}

</CodeBlock>

> Replace 00000000-0000-0000-0000-000000000000 with the lock's ID.

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
{}
```

</TabItem>
</Tabs>
