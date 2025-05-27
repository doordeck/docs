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

| Parameter   | Required | Description                              |
|-------------|----------|------------------------------------------|
| contentType | true     | Content-type of the logo, e.g. image/png |

### Example

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="shell" label="Request">

```shell title="CURL"
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID/logo' \
   -X POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer TOKEN' \
  --data-binary '{"contentType": "IMAGE_CONTENT_TYPE"}'
```
> - Replace `IMAGE_CONTENT_TYPE` with the image's content type.
> - Replace `APPLICATION_ID` with the application ID.

</TabItem>
<TabItem value="json" label="Response">

```json title="JSON"
{
  "uploadUrl": "PRESIGNED_URL"
}
```

</TabItem>
</Tabs>
