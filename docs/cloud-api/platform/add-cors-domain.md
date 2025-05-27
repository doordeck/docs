---
sidebar_position: 10
---

# Add CORS Domain

:::warning
This endpoint is only available to users with Doordeck issued auth tokens.
:::

Adds a domain to the list of permitted CORS domains to allow webapps to call Doordeck APIs directly.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/cors`

### Request Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | true | CORS Domain
