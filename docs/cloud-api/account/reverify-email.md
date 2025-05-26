---
sidebar_position: 10
---

# Reverify Email

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

This endpoint will generate a new email to the logged user with a new verification code to validate their email address.

### HTTP Request
`POST https://api.doordeck.com/account/email/reverify`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="shell" label="Request">

```shell title="CURL"
curl "https://api.doordeck.com/account/email/reverify"
  -X POST
  -H "Authorization: Bearer TOKEN"
```

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
{}
```

</TabItem>
</Tabs>
