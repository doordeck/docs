---
sidebar_position: 14
---

# Get Application Owners Details

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

This endpoint will return the details of all owners of an application (see json below), given the requesting user is an owner.

### HTTP Request

`GET https://api.doordeck.com/platform/application/APPLICATION_ID/owner`

### Request Parameters

| Parameter     | Required | Description                             |
| ------------- | -------- | --------------------------------------- |
| applicationId | true     | Application ID to get owner details for |

### Response Parameters

| Parameter   | Description                                                                                                        |
|-------------|--------------------------------------------------------------------------------------------------------------------|
| userId      | is the user's ID                                                                                                   |
| email       | is the user's email address                                                                                        |
| displayName | is optional and will be null if not set                                                                            |
| orphaned    | is false is not orphaned                                                                                           |
| foreign     | is true if the user belongs to the Doordeck user pool, false if they belong to a third-party application user pool |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/owner' \
  -X GET \
  -H 'Authorization: Bearer TOKEN'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "userId": "00000000-0000-0000-0000-000000000000",
    "email": "bear@doordeck.com",
    "displayName": "Bear",
    "orphaned": false,
    "foreign": false
  }
]
```

</TabItem>
</Tabs>
