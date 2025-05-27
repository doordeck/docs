---
sidebar_position: 16
---

# Update Secure Settings

This endpoint allows multiple operations to be performed on locks. Requests to this endpoint must be signed and formed as a JSON web token.
This section explains how to change on-lock settings, such as unlock time and open hours.

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

| Parameter      | Required | Description                                                         |
|----------------|----------|---------------------------------------------------------------------|
| type           | true     | Must be `MUTATE_SETTING`                                            |
| unlockDuration | false    | Set to an integer number of seconds for the lock to remain unlocked |
| unlockBetween  | false    | Set to unlock between definition below, or null to remove settings  |

The unlock between object definition is as follows

| Parameter  | Required | Description                                                                        |
|------------|----------|------------------------------------------------------------------------------------|
| start      | true     | Local time, (HH:mm) describing the start of an unlock between time window          |
| end        | true     | Local time, (HH:mm) describing the end of an unlock between time window            |
| timezone   | true     | Timezone, e.g. Europe/London, describing what hours the start and end are valid in |
| days       | true     | List of days the time window applies, e.g. MONDAY, TUESDAY                         |
| exceptions | false    | List of dates (YYYY-MM-DD) to ignore above settings, useful for holidays           |

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
        type: "MUTATE_SETTING",
        unlockDuration: 10
      }
    }'
)


${Execute}`}

</CodeBlock>

:::note[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the lock's ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{}
```

</TabItem>
</Tabs>
