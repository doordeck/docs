# Platform

<aside class="warning">
All of the platform endpoints are only available to users with Doordeck issued auth tokens.
</aside>

## Create Application

```shell
curl 'https://api.doordeck.com/platform/application'
  -X POST
  -H "Authorization: Bearer TOKEN"
  -H 'content-type: application/json'
  --data-binary '{"name":"My Amazing App","companyName":"My amazing company","mailingAddress":"My address"}'
```

This endpoint allows the creation of an application; an application is how user's are divided between third-parties 
within Doordeck and define certain branding, UI and authentication elements. 

The user creating the application will automatically be assigned as the owner.

### HTTP Request

`POST https://api.doordeck.com/platform/application`

### Request Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | true | Application's name
companyName | true | Company's registered name, e.g. Doordeck Limited
mailingAddress | true | Company's registered address, e.g. IDEALondon, 69 Wilson Street, LONDON, EC2A 2BB
privacyPolicy | false | URI to the application's privacy policy, must start with https://
supportContact | false | URI to application's support contact, can start with https:// or mailto://
appLink | false | URI for deep linking into the application directly
emailPreferences | false | See email preference definition below
logoUrl | false | URI to application's logo, must be hosted on https://cdn.doordeck.com/

The email preferences object is formed of the following fields

Parameter | Required | Description
--------- | -------- | -----------
senderEmail | false (defaults to info@doordeck.com) | Email address to use when sending emails to users'
senderName | false (defaults to Doordeck) | Email name to use when emailing users'
primaryColour | false (defaults to #00283C) | Primary colouring for email
secondaryColour | false (defaults to #45BDD1) | Secondary colouring for email
callToAction | false | See call to action definition

The call to action is formed of the following fields

Parameter | Required | Description
--------- | -------- | -----------
actionTarget | true | URI to direct user's to when clicking CTA
headline | true | Textual description for CTA, e.g. "Use the Doordeck App to make unlocking a breeze!"
actionText | true | Text used for the CTA button, e.g. "Download now!"

## List Applications

```shell
curl 'https://api.doordeck.com/platform/application' \
  -X GET \
  -H "Authorization: Bearer TOKEN"
```

Lists all application's owned by the current user

### HTTP Request

`GET https://api.doordeck.com/platform/application`

## Get Application

```shell
curl 'https://api.doordeck.com/platform/application/APPLICATION_ID' \
  -X GET \
  -H "Authorization: Bearer TOKEN"
```

> Replace `APPLICATION_ID` with the application ID.

Get's the application specified by application ID.

### HTTP Request

`GET https://api.doordeck.com/platform/application/APPLICATION_ID`

## Update Application

Updates any of the fields defined in the initial [create application](#create-application) request.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID`

## Delete Application

Delete's the application, this is irreversible! 

### HTTP Request

`DELETE https://api.doordeck.com/platform/application/APPLICATION_ID`

## Get Logo Upload URL

Gets a pre-signed URL ready for uploading the application logo to.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/logo`

### Request Parameters

Parameter | Required | Description
--------- | -------- | -----------
contentType | true | Content-type of the logo, e.g. image/png

## Add Auth Key

Adds a new auth key to the permitted auth keys for user's of this application, can be RSA, EC or Ed25519.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/key`

### Request Parameters

Key should be in [JSON Web Key format (JWK)](https://mkjwk.org), key must have a unique key ID (```kid```) field.

## Add Auth Issuer

Adds a new auth issuer which must be unique across all applications, it should be a URI controller by the application 
itself, e.g. https://myapp.com - it must match the ```iss``` field in all auth tokens generated by the third-party
application.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/issuer`

### Request Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | true | Issuer

## Delete Auth Issuer 

Deletes an auth issuer.

### HTTP Request

`DELETE https://api.doordeck.com/platform/application/APPLICATION_ID/issuer`

### Request Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | true | Issuer

## Add CORS Domain

Adds a domain to the list of permitted CORS domains to allow webapps to call Doordeck APIs directly.

### HTTP Request

`POST https://api.doordeck.com/platform/application/APPLICATION_ID/cors`

### Request Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | true | CORS Domain

## Remove CORS Domain

Remove CORS domain.

### HTTP Request

`DELETE https://api.doordeck.com/platform/application/APPLICATION_ID/cors`

### Request Parameters

Parameter | Required | Description
--------- | -------- | -----------
url | true | CORS Domain