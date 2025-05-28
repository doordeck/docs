---
sidebar_position: 1
---

# Create application

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

This endpoint allows the creation of an application; an application is how user's are divided between third-parties
within Doordeck and define certain branding, UI and authentication elements.

The user creating the application will automatically be assigned as the owner.

### HTTP Request

`POST https://api.doordeck.com/platform/application`

### Request Parameters

| Parameter        | Required | Description                                                                       |
|------------------|----------|-----------------------------------------------------------------------------------|
| name             | true     | Application's name                                                                |
| companyName      | true     | Company's registered name, e.g. Doordeck Limited                                  |
| mailingAddress   | true     | Company's registered address, e.g. IDEALondon, 69 Wilson Street, LONDON, EC2A 2BB |
| privacyPolicy    | false    | URI to the application's privacy policy, must start with https://                 |
| supportContact   | false    | URI to application's support contact, can start with https:// or mailto://        |
| appLink          | false    | URI for deep linking into the application directly                                |
| emailPreferences | false    | See email preference definition below                                             |
| logoUrl          | false    | URI to application's logo, must be hosted on https://cdn.doordeck.com/            |

The email preferences object is formed of the following fields

| Parameter               | Required                              | Description                                               |
|-------------------------|---------------------------------------|-----------------------------------------------------------|
| senderEmail             | false (defaults to info@doordeck.com) | Email address to use when sending emails to users'        |
| senderName              | false (defaults to Doordeck)          | Email name to use when emailing users'                    |
| primaryColour           | false (defaults to #00283C)           | Primary colouring for email                               |
| secondaryColour         | false (defaults to #45BDD1)           | Secondary colouring for email                             |
| onlySendEssentialEmails | false (defaults to false)             | Restrict the emails to be sent to only the essential ones |
| callToAction            | false                                 | See call to action definition                             |

The call to action is formed of the following fields

| Parameter    | Required | Description                                                                          |
|--------------|----------|--------------------------------------------------------------------------------------|
| actionTarget | true     | URI to direct user's to when clicking CTA                                            |
| headline     | true     | Textual description for CTA, e.g. "Use the Doordeck App to make unlocking a breeze!" |
| actionText   | true     | Text used for the CTA button, e.g. "Download now!"                                   |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application' \
  -X POST \
  -H "Authorization: Bearer TOKEN" \
  -H 'content-type: application/json' \
  --data-binary '{"name":"My Amazing App","companyName":"My amazing company","mailingAddress":"My address"}'
```

:::info[Remember]
Replace `TOKEN` with your access token.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="HTTP CODE"
204
```

</TabItem>
</Tabs>
