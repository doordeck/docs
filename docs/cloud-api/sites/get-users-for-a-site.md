---
sidebar_position: 3
---

# Get Users For A Site

This endpoint lists all users in the selected site, the results are filtered to ensure only locks the current user is an
administrator of will return user information.

### HTTP Request

`GET https://api.doordeck.com/site/SITE_ID/user/`

Replace `SITE_ID` with the appropriate site ID.

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/site/00000000-0000-0000-0000-000000000000/user/' \
  -H "Authorization: Bearer TOKEN"
```

:::note[Remember]
* Replace `TOKEN` with your access token.
* Replace `00000000-0000-0000-0000-000000000000` with the site's ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "userId": "5b2b9930-3a7e-11e8-940e-bffab372a82e",
    "email": "michael@doordeck.com",
    "displayName": null,
    "orphan": false
  },
  {
    "userId": "f07d3ea0-593e-11e8-8257-bffab372a82e",
    "email": "john@doordeck.com",
    "displayName": null,
    "orphan": false
  }
]
```

</TabItem>
</Tabs>
