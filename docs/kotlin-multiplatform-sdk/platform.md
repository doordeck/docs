# Platform resource

:::warning
All of the platform functions are only available to users with Doordeck issued auth tokens
:::

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

## Create application

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val application = PlatformOperations.CreateApplication.Builder()
  .setName("APPLICATION_NAME")
  .setCompanyName("COMPANY_NAME")
  .setMailingAddress("COMPANY@MAIL.COM")
  .build()
// Returns a UUID
val response = sdk.platform().createApplication(application)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var application = new PlatformOperations.CreateApplication.Builder()
    .setName("APPLICATION_NAME")
    .setCompanyName("COMPANY_NAME")
    .setMailingAddress("COMPANY@MAIL.COM")
    .build();
// Returns a CompletableFuture<UUID>
var response = sdk.platform().createApplicationAsync(application);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let application = PlatformOperations.CreateApplicationBuilder()
    .setName(name: "APPLICATION_NAME")
    .setCompanyName(companyName: "COMPANY_NAME")
    .setMailingAddress(mailingAddress: "COMPANY@MAIL.COM")
    .build()
// Returns a NSUUID asynchronously
let response = await sdk.platform().createApplication(application: application)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const application = new com.doordeck.multiplatform.sdk.model.data.PlatformOperations.CreateApplication.Builder()
  .setName("APPLICATION_NAME")
  .setCompanyName("COMPANY_NAME")
  .setMailingAddress("COMPANY@MAIL.COM")
  .build();
// Returns a Promise<string>
const response = await com.doordeck.multiplatform.sdk.api.platform().createApplication(application);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var data = new CreateApplication(
  name: "APPLICATION_NAME", 
  companyName: "COMPANY_NAME", 
  mailingAddress: "COMPANY@MAIL.COM"
);
// Returns a Task<Guid>
var response = await sdk.GetPlatform().CreateApplication(data);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
data = doordeck_headless_sdk.CreateApplication(
  "APPLICATION_NAME", 
  "COMPANY_NAME", 
  "COMPANY@MAIL.COM"
)
# Returns a Future[SimpleNamespace]
response = await sdk.platform.create_application(data)
```

</TabItem>
</Tabs>

## List applications

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<ApplicationResponse>
val response = sdk.platform().listApplications()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<ApplicationResponse>>
var response = sdk.platform().listApplicationsAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<ApplicationResponse> asynchronously
let response = await sdk.platform().listApplications()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<ApplicationResponse>>
const response = await com.doordeck.multiplatform.sdk.api.platform().listApplications();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<ApplicationResponse>>
var response = await sdk.GetPlatform().ListApplications();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.platform.list_applications()
```

</TabItem>
</Tabs>

## Get application

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a ApplicationResponse
val response = sdk.platform().getApplication(APPLICATION_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<ApplicationResponse>
var response = sdk.platform().getApplicationAsync(APPLICATION_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a ApplicationResponse asynchronously
let response = await sdk.platform().getApplication(applicationId: APPLICATION_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<ApplicationResponse>
const response = await com.doordeck.multiplatform.sdk.api.platform().getApplication("APPLICATION_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<ApplicationResponse>
var response = await sdk.GetPlatform().GetApplication(APPLICATION_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.platform.get_application("APPLICATION_ID")
```

</TabItem>
</Tabs>

## Update application name

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().updateApplicationName(
  applicationId = APPLICATION_ID, 
  name = "APPLICATION_NAME"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().updateApplicationNameAsync(APPLICATION_ID, "APPLICATION_NAME");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().updateApplicationName(
  applicationId: APPLICATION_ID, 
  name: "APPLICATION_NAME"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().updateApplicationName(
  "APPLICATION_ID", 
  "APPLICATION_NAME"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().UpdateApplicationName(
  applicationId: APPLICATION_ID, 
  name: "APPLICATION_NAME"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.update_application_name(
  "APPLICATION_ID", 
  "APPLICATION_NAME"
)
```

</TabItem>
</Tabs>

## Update application company name

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().updateApplicationCompanyName(
  applicationId = APPLICATION_ID, 
  companyName = "APPLICATION_COMPANY_NAME"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().updateApplicationCompanyNameAsync(APPLICATION_ID, "APPLICATION_COMPANY_NAME");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().updateApplicationCompanyName(
  applicationId: APPLICATION_ID, 
  companyName: "APPLICATION_COMPANY_NAME"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().updateApplicationCompanyName(
  "APPLICATION_ID", 
  "APPLICATION_COMPANY_NAME"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().UpdateApplicationCompanyName(
  applicationId: APPLICATION_ID, 
  companyName: "APPLICATION_COMPANY_NAME"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.update_application_company_name(
  "APPLICATION_ID", 
  "APPLICATION_COMPANY_NAME"
)
```

</TabItem>
</Tabs>

## Update application mailing address

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().updateApplicationMailingAddress(
  applicationId = APPLICATION_ID,
  mailingAddress = "COMPANY@MAIL.COM"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().updateApplicationMailingAddressAsync(APPLICATION_ID, "COMPANY@MAIL.COM");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().updateApplicationMailingAddress(
  applicationId: APPLICATION_ID, 
  mailingAddress: "COMPANY@MAIL.COM"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().updateApplicationMailingAddress(
  "APPLICATION_ID", 
  "COMPANY@MAIL.COM"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().UpdateApplicationMailingAddress(
  applicationId: APPLICATION_ID, 
  mailingAddress: "COMPANY@MAIL.COM"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.update_application_mailing_address(
  "APPLICATION_ID", 
  "COMPANY@MAIL.COM"
)
```

</TabItem>
</Tabs>

## Update application privacy policy

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().updateApplicationPrivacyPolicy(
  applicationId = APPLICATION_ID,
  privacyPolicy = PRIVACY_POLICY
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().updateApplicationPrivacyPolicyAsync(APPLICATION_ID, PRIVACY_POLICY);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().updateApplicationPrivacyPolicy(
  applicationId: APPLICATION_ID, 
  privacyPolicy: PRIVACY_POLICY
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().updateApplicationPrivacyPolicy(
  "APPLICATION_ID", 
  "PRIVACY_POLICY"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().UpdateApplicationPrivacyPolicy(
  applicationId: APPLICATION_ID, 
  privacyPolicy: PRIVACY_POLICY
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.update_application_privacy_policy(
  "APPLICATION_ID", 
  "PRIVACY_POLICY"
)
```

</TabItem>
</Tabs>

## Update application support contact

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().updateApplicationSupportContact(
  applicationId = APPLICATION_ID,
  supportContact = SUPPORT_CONTACT_URL
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().updateApplicationSupportContactAsync(APPLICATION_ID, SUPPORT_CONTACT_URL);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().updateApplicationSupportContact(
  applicationId: APPLICATION_ID, 
  supportContact: SUPPORT_CONTACT_URL
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().updateApplicationSupportContact(
  "APPLICATION_ID", 
  "SUPPORT_CONTACT_URL"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().UpdateApplicationSupportContact(
  applicationId: APPLICATION_ID, 
  supportContact: SUPPORT_CONTACT_URL
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.update_application_support_contact(
  "APPLICATION_ID", 
  "SUPPORT_CONTACT_URL"
)
```

</TabItem>
</Tabs>

## Update application app link

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().updateApplicationAppLink(
  applicationId = APPLICATION_ID,
  appLink = APP_LINK
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().updateApplicationAppLinkAsync(APPLICATION_ID, APP_LINK);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().updateApplicationAppLink(
  applicationId: APPLICATION_ID, 
  appLink: APP_LINK
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().updateApplicationAppLink(
  "APPLICATION_ID", 
  "APP_LINK"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().UpdateApplicationAppLink(
  applicationId: APPLICATION_ID, 
  appLink: APP_LINK
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.update_application_app_link(
  "APPLICATION_ID", 
  "APP_LINK"
)
```

</TabItem>
</Tabs>

## Update application email preferences

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
val emailPreferences = PlatformOperations.EmailPreferences.Builder()
  .setSenderEmail("SENDER_EMAIL")
  .setSenderName("SENDER_NAME")
  .setPrimaryColour("PRIMARY_COLOR")
  .setSecondaryColour("SECONDARY_COLOR")
  .setOnlySendEssentialEmails(false)
  .build()
sdk.platform().updateApplicationEmailPreferences(
  applicationId = APPLICATION_ID,
  emailPreferences = emailPreferences
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
var emailPreferences = new PlatformOperations.EmailPreferences.Builder()
    .setSenderEmail("SENDER_EMAIL")
    .setSenderName("SENDER_NAME")
    .setPrimaryColour("PRIMARY_COLOR")
    .setSecondaryColour("SECONDARY_COLOR")
    .setOnlySendEssentialEmails(false)
    .build();
sdk.platform().updateApplicationEmailPreferencesAsync(APPLICATION_ID, emailPreferences);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let emailPreferences = PlatformOperations.EmailPreferencesBuilder()
  .setSenderEmail(senderEmail: "SENDER_EMAIL")
  .setSenderName(senderName: "SENDER_NAME")
  .setPrimaryColour(primaryColour: "PRIMARY_COLOR")
  .setSecondaryColour(secondaryColour: "SECONDARY_COLOR")
  .setOnlySendEssentialEmails(onlySendEssentialEmails: false)
  .build()
await sdk.platform().updateApplicationEmailPreferences(
  applicationId: APPLICATION_ID, 
  emailPreferences: emailPreferences
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const emailPreferences = new com.doordeck.multiplatform.sdk.model.data.PlatformOperations.EmailPreferences.Builder()
  .setSenderEmail("SENDER_EMAIL")
  .setSenderName("SENDER_NAME")
  .setPrimaryColour("PRIMARY_COLOR")
  .setSecondaryColour("SECONDARY_COLOR")
  .setOnlySendEssentialEmails(false)
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().updateApplicationEmailPreferences(
  "APPLICATION_ID",
  emailPreferences
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var emailPreferences = new EmailPreferences(
  senderEmail: "SENDER_EMAIL",
  senderName: "SENDER_NAME", 
  primaryColour: "PRIMARY_COLOR", 
  secondaryColour: "SECONDARY_COLOR", 
  onlySendEssentialEmails: false
);
// Returns a Task<object>
await sdk.GetPlatform().UpdateApplicationEmailPreferences(
  applicationId: APPLICATION_ID, 
  emailPreferences: emailPreferences
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
emailPreferences = doordeck_headless_sdk.EmailPreferences(
  "SENDER_EMAIL", 
  "SENDER_NAME", 
  "PRIMARY_COLOR", 
  "SECONDARY_COLOR", 
  False
)
# Returns a Future[SimpleNamespace]
await sdk.platform.update_application_email_preferences(
  "APPLICATION_ID", 
  emailPreferences
)
```

</TabItem>
</Tabs>

## Update application log url

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().updateApplicationLogoUrl(
  applicationId = APPLICATION_ID,
  logoUrl = LOGO_URL
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().updateApplicationLogoUrlAsync(APPLICATION_ID, LOGO_URL);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().updateApplicationLogoUrl(
  applicationId: APPLICATION_ID, 
  logoUrl: LOGO_URL
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().updateApplicationLogoUrl(
  "APPLICATION_ID", 
  "LOGO_URL"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().UpdateApplicationLogoUrl(
  applicationId: APPLICATION_ID, 
  logoUrl: LOGO_URL
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.update_application_logo_url(
  "APPLICATION_ID", 
  "LOGO_URL"
)
```

</TabItem>
</Tabs>

## Delete application

:::danger
This operation is executed instantly and is irreversible
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().deleteApplication(APPLICATION_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().deleteApplicationAsync(APPLICATION_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().deleteApplication(applicationId: APPLICATION_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().deleteApplication("APPLICATION_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().DeleteApplication(APPLICATION_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.delete_application("APPLICATION_ID")
```

</TabItem>
</Tabs>

## Get logo upload url

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a GetLogoUploadUrlResponse
val response = sdk.platform().getLogoUploadUrl(
  applicationId = APPLICATION_ID,
  contentType = "CONTENT_TYPE"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<GetLogoUploadUrlResponse>
var response = sdk.platform().getLogoUploadUrlAsync(APPLICATION_ID, "CONTENT_TYPE");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a GetLogoUploadUrlResponse asynchronously
let response = await sdk.platform().getLogoUploadUrl(
  applicationId: APPLICATION_ID, 
  contentType: "CONTENT_TYPE"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<GetLogoUploadUrlResponse>
const response = await com.doordeck.multiplatform.sdk.api.platform().getLogoUploadUrl(
  "APPLICATION_ID", 
  "CONTENT_TYPE"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<GetLogoUploadUrlResponse>
var response = await sdk.GetPlatform().GetLogoUploadUrl(
  applicationId: APPLICATION_ID, 
  contentType: "CONTENT_TYPE"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.platform.get_logo_upload_url(
  "APPLICATION_ID", 
  "CONTENT_TYPE"
)
```

</TabItem>
</Tabs>

## Add auth key

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val key = OctetKeyPair.Builder(Curve.Ed25519, Base64URL("0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc"))
  .keyUse(KeyUse.SIGNATURE)
  .algorithm(Algorithm.parse("EdDSA"))
  .keyID("90a983fd-9077-41f9-840c-7220581017f5")
  .build()
// Returns Unit
sdk.platform().addAuthKey(
  applicationId = APPLICATION_ID, 
  key = key
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var key = OctetKeyPair.Builder(Curve.Ed25519, Base64URL("0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc"))
    .keyUse(KeyUse.SIGNATURE)
    .algorithm(Algorithm.parse("EdDSA"))
    .keyID("90a983fd-9077-41f9-840c-7220581017f5")
    .build();
// Returns a CompletableFuture<Void>
sdk.platform().addAuthKeyAsync(APPLICATION_ID, key);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let key = PlatformOperations.Ed25519Key(
  kty: "OKP", 
  use: "sig", 
  kid: "90a983fd-9077-41f9-840c-7220581017f5", 
  alg: "EdDSA", 
  crv: "Ed25519", 
  x: "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc"
)
// Returns Void asynchronously
await sdk.platform().addAuthKey(
  applicationId: APPLICATION_ID, 
  key: key
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const key = new com.doordeck.multiplatform.sdk.model.data.PlatformOperations.Ed25519Key(
  "OKP", 
  "sig", 
  "90a983fd-9077-41f9-840c-7220581017f5", 
  "EdDSA", 
  "Ed25519", 
  "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc"
);
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().addAuthKey(
  "APPLICATION_ID", 
  key
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var key = new Ed25519Key(
  use: "sig", 
  kid: "90a983fd-9077-41f9-840c-7220581017f5", 
  alg: "EdDSA", 
  crv: "Ed25519", 
  x: "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc"
);
// Returns a Task<object>
await sdk.GetPlatform().AddAuthKey(
  applicationId: APPLICATION_ID, 
  key: key
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
key = doordeck_headless_sdk.Ed25519Key(
  "sig", 
  "90a983fd-9077-41f9-840c-7220581017f5", 
  "EdDSA",
  "Ed25519", 
  "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc"
)
await sdk.platform.add_auth_key(
  "APPLICATION_ID", 
  key
)
```

</TabItem>
</Tabs>

## Add auth issuer

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().addAuthIssuer(
  applicationId = APPLICATION_ID, 
  url = URL
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().addAuthIssuerAsync(APPLICATION_ID, URL);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().addAuthIssuer(
  applicationId: APPLICATION_ID, 
  url: URL
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().addAuthIssuer(
  "APPLICATION_ID", 
  "URL"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().AddAuthIssuer(
  applicationId: APPLICATION_ID, 
  url: URL
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.add_auth_issuer(
  "APPLICATION_ID", 
  "URL"
)
```

</TabItem>
</Tabs>

## Delete auth issuer

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().deleteAuthIssuer(
  applicationId = APPLICATION_ID, 
  url = URL
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().deleteAuthIssuerAsync(APPLICATION_ID, URL);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().deleteAuthIssuer(
  applicationId: APPLICATION_ID, 
  url: URL
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().deleteAuthIssuer(
  "APPLICATION_ID", 
  "URL"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().DeleteAuthIssuer(
  applicationId: APPLICATION_ID, 
  url: URL
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.delete_auth_issuer(
  "APPLICATION_ID", 
  "URL"
)
```

</TabItem>
</Tabs>

## Add CORS domain

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().addCorsDomain(
  applicationId = APPLICATION_ID, 
  url = URL
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().addCorsDomainAsync(APPLICATION_ID, URL);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().addCorsDomain(
  applicationId: APPLICATION_ID, 
  url: URL
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().addCorsDomain(
  "APPLICATION_ID", 
  "URL"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().AddCorsDomain(
  applicationId: APPLICATION_ID, 
  url: URL
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.add_cors_domain(
  "APPLICATION_ID", 
  "URL"
)
```

</TabItem>
</Tabs>

## Remove CORS domain

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().removeCorsDomain(
  applicationId = APPLICATION_ID, 
  url = URL
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().removeCorsDomainAsync(APPLICATION_ID, URL);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().removeCorsDomain(
  applicationId: APPLICATION_ID, 
  url: URL
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().removeCorsDomain(
  "APPLICATION_ID", 
  "URL"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().RemoveCorsDomain(
  applicationId: APPLICATION_ID, 
  url: URL
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.remove_cors_domain(
  "APPLICATION_ID", 
  "URL"
)
```

</TabItem>
</Tabs>

## Add application owner

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().addApplicationOwner(
  applicationId = APPLICATION_ID,
  userId = OWNER_ID
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().addApplicationOwnerAsync(APPLICATION_ID, OWNER_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().addApplicationOwner(
  applicationId: APPLICATION_ID, 
  userId: OWNER_ID
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().addApplicationOwner(
  "APPLICATION_ID", 
  "OWNER_ID"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().AddApplicationOwner(
  applicationId: APPLICATION_ID, 
  userId: OWNER_ID
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.add_application_owner("APPLICATION_ID", "OWNER_ID")
```

</TabItem>
</Tabs>

## Remove application owner

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.platform().removeApplicationOwner(
  applicationId = APPLICATION_ID, 
  userId = OWNER_ID
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.platform().removeApplicationOwnerAsync(APPLICATION_ID, OWNER_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.platform().removeApplicationOwner(
  applicationId: APPLICATION_ID, 
  userId: OWNER_ID
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.platform().removeApplicationOwner(
  "APPLICATION_ID", 
  "OWNER_ID"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetPlatform().RemoveApplicationOwner(
  applicationId: APPLICATION_ID, 
  userId: OWNER_ID
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.platform.remove_application_owner(
  "APPLICATION_ID", 
  "OWNER_ID"
)
```

</TabItem>
</Tabs>

## Get application owners details

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<ApplicationOwnerDetailsResponse>
val response = sdk.platform().getApplicationOwnersDetails(APPLICATION_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<ApplicationOwnerDetailsResponse>>
var response = sdk.platform().getApplicationOwnersDetailsAsync(APPLICATION_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<ApplicationOwnerDetailsResponse> asynchronously
let response = await sdk.platform().getApplicationOwnersDetails(applicationId: APPLICATION_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<ApplicationOwnerDetailsResponse>>
const response = await com.doordeck.multiplatform.sdk.api.platform().getApplicationOwnersDetails("APPLICATION_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<ApplicationOwnerDetailsResponse>>
var response = await sdk.GetPlatform().GetApplicationOwnersDetails(APPLICATION_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.platform.get_application_owners_details("APPLICATION_ID")
```

</TabItem>
</Tabs>
