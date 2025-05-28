---
sidebar_position: 6
---

# Get Logo Upload URL

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Gets a pre-signed URL ready for uploading the application logo to.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/logo`

### Request Parameters

| Parameter   | Required | Description                                        |
|-------------|----------|----------------------------------------------------|
| contentType | true     | Content-type of the logo (image/png or image/jpeg) |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="request" label="Request">

```shell showLineNumbers title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/logo' \
  -X POST \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer TOKEN' \
  --data-binary '{"contentType": "IMAGE_CONTENT_TYPE"}'
```

:::info[Remember]
* Replace `TOKEN` with your access token.
* Replace `APPLICATION_ID` with the application ID.
* Replace `IMAGE_CONTENT_TYPE` with the image's content type.
:::

</TabItem>
<TabItem value="response" label="Response">

```json showLineNumbers title="JSON"
{
  "uploadUrl": "PRESIGNED_URL"
}
```

</TabItem>
</Tabs>
