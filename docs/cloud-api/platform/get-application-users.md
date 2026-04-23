---
sidebar_position: 15
---

# Get Application Users

This endpoint returns a paginated list of users belonging to an application. Results are capped at 100 per page; use 
`lastUserRetrieved` to cursor through subsequent pages.

Requesting user must be an application owner.

### HTTP Request

`GET https://api.doordeck.com/platform/application/APPLICATION_ID/user`

### Request Parameters

| Parameter         | Required | Description                                                                              |
|-------------------|----------|------------------------------------------------------------------------------------------|
| applicationId     | true     | Application ID to retrieve users for                                                     |
| pageSize          | true     | Number of users to return per page (maximum 100)                                         |
| lastUserRetrieved | false    | User ID of the last user returned in the previous page; omit to start from the beginning |

### Response Parameters

| Parameter          | Description                                                                                                                         |
|--------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| userId             | Sentry Interactive's own user ID for the given user                                                                                 |
| foreignKey         | The application's own identifier for this user                                                                                      |
| displayName        | The user's display name; `null` if not set                                                                                          |
| email              | The user's email address; `null` if not set                                                                                         |
| emailVerified      | Whether the user has verified their email address                                                                                   |
| telephone          | The user's telephone number; `null` if not set                                                                                      |
| telephoneVerified  | Whether the user has verified their telephone number                                                                                |
| emailIndexed       | Whether the user's email is in the application's lookup directory; use this to detect conflicting records by email                  |
| telephoneIndexed   | Whether the user's telephone number is in the application's lookup directory; use this to detect conflicting records by telephone   |
| foreignKeyIndexed  | Whether the user's foreign key is in the application's lookup directory; use this to detect conflicting records by your own user ID |
| lastUpdated        | ISO 8601 timestamp of when the user record was last modified                                                                        |

The `*Indexed` fields indicate whether a user record is present in the application's lookup directory. Application 
developers can use these to identify conflicting records — for example, whether another user already occupies a given 
email address or foreign key.

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/user?pageSize=100&lastUserRetrieved=LAST_USER_ID' \
  -X GET \
  -H 'Authorization: Bearer TOKEN'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
* Replace `LAST_USER_ID` with the `userId` of the last user returned from the previous page, or omit the 
  `lastUserRetrieved` parameter entirely to retrieve the first page.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
[
  {
    "userId": "038842f0-31d9-11ee-949e-19c47074426f",
    "foreignKey": "ff6a77c0-fe96-4a05-a086-248b9d2f64f9",
    "displayName": null,
    "email": "user1@doordeck.com",
    "emailVerified": true,
    "telephone": null,
    "telephoneVerified": false,
    "emailIndexed": false,
    "telephoneIndexed": false,
    "foreignKeyIndexed": true,
    "lastUpdated": "2023-08-03T08:37:41Z"
  },
  {
    "userId": "05b63ad0-66b0-11ee-bdef-736821c1c271",
    "foreignKey": "5b6ab82b-ae96-46d2-b43a-0254157855cb",
    "displayName": null,
    "email": "user2@doordeck.com",
    "emailVerified": true,
    "telephone": null,
    "telephoneVerified": false,
    "emailIndexed": true,
    "telephoneIndexed": false,
    "foreignKeyIndexed": true,
    "lastUpdated": "2023-10-09T14:27:49Z"
  }
]
```

</TabItem>
</Tabs>
