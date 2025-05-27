---
sidebar_position: 2
---

# List applications

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Lists all application's owned by the current user

### HTTP Request

`GET https://api.doordeck.com/platform/application`

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application' \
  -X GET \
  -H "Authorization: Bearer TOKEN"
```

:::note[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "applicationId":"00000000-0000-0000-0000-000000000000",
    "name":"My Amazing App",
    "lastUpdated":1748363687.000000000,
    "owners":[
      "00000000-0000-0000-0000-000000000000"
    ],
    "corsDomains":[

    ],
    "authDomains":[

    ],
    "logoUrl":null,
    "privacyPolicy":null,
    "mailingAddress":"My address",
    "companyName":"My amazing company",
    "supportContact":null,
    "appLink":null,
    "slug":null,
    "emailPreferences":{
      "senderEmail":"info@doordeck.com",
      "senderName":"Doordeck",
      "primaryColour":"#00283C",
      "secondaryColour":"#45BDD1",
      "onlySendEssentialEmails":false,
      "callToAction":null
    },
    "authKeys":{

    },
    "oauth":null,
    "isDoordeckApplication":false
  }
]
```

</TabItem>
</Tabs>
