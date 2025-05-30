# Platform resource

:::warning
All of the platform functions are only available to users with Doordeck issued auth tokens
:::

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

## Create application

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val application = Platform.CreateApplication("APPLICATION_NAME", "COMPANY_NAME", "COMPANY@MAIL.COM")
sdk.platform().createApplication(application)
```

:::tip[In Java...]
Use the `createApplicationAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let application = Platform.CreateApplication(name: "APPLICATION_NAME", companyName: "COMPANY_NAME", mailingAddress: "COMPANY@MAIL.COM", privacyPolicy: null, supportContact: null, appLink: null, emailPreferences: null, logoUrl: null)
sdk.platform().createApplication(application: application)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const platform = doordeck.com.doordeck.multiplatform.sdk.model.data.Platform;
const application = new platform.CreateApplication("APPLICATION_NAME", "COMPANY_NAME", "COMPANY@MAIL.COM", null, null, null, null, null);
await doordeck.com.doordeck.multiplatform.sdk.api.platform().createApplication(application);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var data = new CreateApplication("APPLICATION_NAME", "COMPANY_NAME", "COMPANY@MAIL.COM");
await sdk.GetPlatform().CreateApplication(data);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
data = doordeck_headless_sdk.CreateApplication("APPLICATION_NAME", "COMPANY_NAME", "COMPANY@MAIL.COM")
await sdk.platform.create_application(data)
```

</TabItem>
</Tabs>

## List applications

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.platform().listApplications()
```

:::tip[In Java...]
Use the `listApplicationsAsync` function, which returns a `CompletableFuture<List<ApplicationResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.platform().listApplications()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.platform().listApplications();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetPlatform().ListApplications();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.platform.list_applications()
```

</TabItem>
</Tabs>

## Get application

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.platform().getApplication("APPLICATION_ID")
```

:::tip[In Java...]
Use the `getApplicationAsync` function, which returns a `CompletableFuture<ApplicationResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.platform().getApplication(applicationId: "APPLICATION_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.platform().getApplication("APPLICATION_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetPlatform().GetApplication("APPLICATION_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.platform.get_application("APPLICATION_ID")
```

</TabItem>
</Tabs>

## Update application name

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().updateApplicationName("APPLICATION_ID", "APPLICATION_NAME")
```

:::tip[In Java...]
Use the `updateApplicationNameAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().updateApplicationName(applicationId: "APPLICATION_ID", name: "APPLICATION_NAME")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().updateApplicationName("APPLICATION_ID", "APPLICATION_NAME");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().UpdateApplicationName("APPLICATION_ID", "APPLICATION_NAME");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.update_application_name("APPLICATION_ID", "APPLICATION_NAME")
```

</TabItem>
</Tabs>

## Update application company name

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().updateApplicationCompanyName("APPLICATION_ID", "APPLICATION_COMPANY_NAME")
```

:::tip[In Java...]
Use the `updateApplicationCompanyNameAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().updateApplicationCompanyName(applicationId: "APPLICATION_ID", companyName: "APPLICATION_COMPANY_NAME")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().updateApplicationCompanyName("APPLICATION_ID", "APPLICATION_COMPANY_NAME");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().UpdateApplicationCompanyName("APPLICATION_ID", "APPLICATION_COMPANY_NAME");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.update_application_company_name("APPLICATION_ID", "APPLICATION_COMPANY_NAME")
```

</TabItem>
</Tabs>

## Update application mailing address

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().updateApplicationMailingAddress("APPLICATION_ID", "COMPANY@MAIL.COM")
```

:::tip[In Java...]
Use the `updateApplicationMailingAddressAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().updateApplicationMailingAddress(applicationId: "APPLICATION_ID", mailingAddress: "COMPANY@MAIL.COM")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().updateApplicationMailingAddress("APPLICATION_ID", "COMPANY@MAIL.COM");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().UpdateApplicationMailingAddress("APPLICATION_ID", "COMPANY@MAIL.COM");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.update_application_mailing_address("APPLICATION_ID", "COMPANY@MAIL.COM")
```

</TabItem>
</Tabs>

## Update application privacy policy

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().updateApplicationPrivacyPolicy("APPLICATION_ID", "PRIVACY_POLICY")
```

:::tip[In Java...]
Use the `updateApplicationPrivacyPolicyAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().updateApplicationPrivacyPolicy(applicationId: "APPLICATION_ID", privacyPolicy: "PRIVACY_POLICY")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().updateApplicationPrivacyPolicy("APPLICATION_ID", "PRIVACY_POLICY");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().UpdateApplicationPrivacyPolicy("APPLICATION_ID", "PRIVACY_POLICY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.update_application_privacy_policy("APPLICATION_ID", "PRIVACY_POLICY")
```

</TabItem>
</Tabs>

## Update application support contact

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().updateApplicationSupportContact("APPLICATION_ID", "SUPPORT_CONTACT_URL")
```

:::tip[In Java...]
Use the `updateApplicationSupportContactAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().updateApplicationSupportContact(applicationId: "APPLICATION_ID", supportContact: "SUPPORT_CONTACT_URL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().updateApplicationSupportContact("APPLICATION_ID", "SUPPORT_CONTACT_URL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().UpdateApplicationSupportContact("APPLICATION_ID", "SUPPORT_CONTACT_URL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.update_application_support_contact("APPLICATION_ID", "SUPPORT_CONTACT_URL")
```

</TabItem>
</Tabs>

## Update application app link

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().updateApplicationAppLink("APPLICATION_ID", "APP_LINK")
```

:::tip[In Java...]
Use the `updateApplicationAppLinkAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().updateApplicationAppLink(applicationId: "APPLICATION_ID", appLink: "APP_LINK")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().updateApplicationAppLink("APPLICATION_ID", "APP_LINK");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().UpdateApplicationAppLink("APPLICATION_ID", "APP_LINK");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.update_application_app_link("APPLICATION_ID", "APP_LINK")
```

</TabItem>
</Tabs>

## Update application email preferences

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val emailPreferences = Platform.EmailPreferences("SENDER_EMAIL", "SENDER_NAME", "PRIMARY_COLOR", "SECONDARY_COLOR", false, null)
sdk.platform().updateApplicationEmailPreferences("APPLICATION_ID", emailPreferences)
```

:::tip[In Java...]
Use the `updateApplicationEmailPreferencesAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let emailPreferences = Platform.EmailPreferences(senderEmail: "SENDER_EMAIL", senderName: "SENDER_NAME", primaryColour: "PRIMARY_COLOR", secondaryColour: "SECONDARY_COLOR", onlySendEssentialEmails: false, callToAction: null)
sdk.platform().updateApplicationEmailPreferences(applicationId: "APPLICATION_ID", emailPreferences: emailPreferences)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const platform = doordeck.com.doordeck.multiplatform.sdk.model.data.Platform;
const emailPreferences = new platform.EmailPreferences("SENDER_EMAIL", "SENDER_NAME", "PRIMARY_COLOR", "SECONDARY_COLOR", false, null);
await doordeck.com.doordeck.multiplatform.sdk.api.platform().updateApplicationEmailPreferences("APPLICATION_ID", emailPreferences);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var emailPreferences = new EmailPreferences("SENDER_EMAIL", "SENDER_NAME", "PRIMARY_COLOR", "SECONDARY_COLOR", false);
await sdk.GetPlatform().UpdateApplicationEmailPreferences("APPLICATION_ID", emailPreferences);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
emailPreferences = doordeck_headless_sdk.EmailPreferences("SENDER_EMAIL", "SENDER_NAME", "PRIMARY_COLOR", "SECONDARY_COLOR", False)
await sdk.platform.update_application_email_preferences("APPLICATION_ID", emailPreferences)
```

</TabItem>
</Tabs>

## Update application log url

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().updateApplicationLogoUrl("APPLICATION_ID", "LOGO_URL")
```

:::tip[In Java...]
Use the `updateApplicationLogoUrlAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().updateApplicationLogoUrl(applicationId: "APPLICATION_ID", logoUrl: "LOGO_URL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().updateApplicationLogoUrl("APPLICATION_ID", "LOGO_URL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().UpdateApplicationLogoUrl("APPLICATION_ID", "LOGO_URL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.update_application_logo_url("APPLICATION_ID", "LOGO_URL")
```

</TabItem>
</Tabs>

## Delete application

:::danger
This operation is executed instantly and is irreversible
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().deleteApplication("APPLICATION_ID")
```

:::tip[In Java...]
Use the `deleteApplicationAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().deleteApplication(applicationId: "APPLICATION_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().deleteApplication("APPLICATION_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().DeleteApplication("APPLICATION_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.delete_application("APPLICATION_ID")
```

</TabItem>
</Tabs>

## Get logo upload url

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.platform().getLogoUploadUrl("APPLICATION_ID", "CONTENT_TYPE")
```

:::tip[In Java...]
Use the `getLogoUploadUrlAsync` function, which returns a `CompletableFuture<GetLogoUploadUrlResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.platform().getLogoUploadUrl(applicationId: "APPLICATION_ID", contentType: "CONTENT_TYPE")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.platform().getLogoUploadUrl("APPLICATION_ID", "CONTENT_TYPE");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetPlatform().GetLogoUploadUrl("APPLICATION_ID", "CONTENT_TYPE");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.platform.get_logo_upload_url("APPLICATION_ID", "CONTENT_TYPE")
```

</TabItem>
</Tabs>

## Add auth key

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val key = Platform.Ed25519Key("OKP", "sig", "90a983fd-9077-41f9-840c-7220581017f5", "EdDSA", "zVfpB5Nfj4SzYayFpTu4Qm1JaUmk6-FBbFUX3k1qqwc", "Ed25519", "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc")
sdk.platform().addAuthKey("APPLICATION_ID", key)
```

:::tip[In Java...]
Use the `addAuthKeyAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let key = Platform.Ed25519Key(kty: "OKP", user: "sig", kid: "90a983fd-9077-41f9-840c-7220581017f5", alg: "EdDSA", d: "zVfpB5Nfj4SzYayFpTu4Qm1JaUmk6-FBbFUX3k1qqwc", crv: "Ed25519", x: "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc")
sdk.platform().addAuthKey(applicationId: "APPLICATION_ID", key: key)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const platform = doordeck.com.doordeck.multiplatform.sdk.model.data.Platform;
const key = new platform.Ed25519Key("OKP", "sig", "90a983fd-9077-41f9-840c-7220581017f5", "EdDSA", "zVfpB5Nfj4SzYayFpTu4Qm1JaUmk6-FBbFUX3k1qqwc", "Ed25519", "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc");
await doordeck.com.doordeck.multiplatform.sdk.api.platform().addAuthKey("APPLICATION_ID", key);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var key = new Ed25519Key("sig", "90a983fd-9077-41f9-840c-7220581017f5", "EdDSA", "zVfpB5Nfj4SzYayFpTu4Qm1JaUmk6-FBbFUX3k1qqwc", "Ed25519", "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc");
await sdk.GetPlatform().AddAuthKey("APPLICATION_ID", key);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
key = doordeck_headless_sdk.Ed25519Key("sig", "90a983fd-9077-41f9-840c-7220581017f5", "EdDSA", "zVfpB5Nfj4SzYayFpTu4Qm1JaUmk6-FBbFUX3k1qqwc", "Ed25519", "0ufELXg9OUjkAZUs5aGdgVbz664erh8t9cTvFBHicrc")
await sdk.platform.add_auth_key("APPLICATION_ID", key)
```

</TabItem>
</Tabs>

## Add auth issuer

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().addAuthIssuer("APPLICATION_ID", "URL")
```

:::tip[In Java...]
Use the `addAuthIssuerAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().addAuthIssuer(applicationId: "APPLICATION_ID", url: "URL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().addAuthIssuer("APPLICATION_ID", "URL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().AddAuthIssuer("APPLICATION_ID", "URL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.add_auth_issuer("APPLICATION_ID", "URL")
```

</TabItem>
</Tabs>

## Delete auth issuer

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().deleteAuthIssuer("APPLICATION_ID", "URL")
```

:::tip[In Java...]
Use the `deleteAuthIssuerAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().deleteAuthIssuer(applicationId: "APPLICATION_ID", url: "URL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().deleteAuthIssuer("APPLICATION_ID", "URL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().DeleteAuthIssuer("APPLICATION_ID", "URL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.delete_auth_issuer("APPLICATION_ID", "URL")
```

</TabItem>
</Tabs>

## Add CORS domain

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().addCorsDomain("APPLICATION_ID", "URL")
```

:::tip[In Java...]
Use the `addCorsDomainAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().addCorsDomain(applicationId: "APPLICATION_ID", url: "URL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().addCorsDomain("APPLICATION_ID", "URL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().AddCorsDomain("APPLICATION_ID", "URL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.add_cors_domain("APPLICATION_ID", "URL")
```

</TabItem>
</Tabs>

## Remove CORS domain

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().removeCorsDomain("APPLICATION_ID", "URL")
```

:::tip[In Java...]
Use the `removeCorsDomainAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().removeCorsDomain(applicationId: "APPLICATION_ID", url: "URL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().removeCorsDomain("APPLICATION_ID", "URL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().RemoveCorsDomain("APPLICATION_ID", "URL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.remove_cors_domain("APPLICATION_ID", "URL")
```

</TabItem>
</Tabs>

## Add application owner

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().addApplicationOwner("APPLICATION_ID", "OWNER_ID")
```

:::tip[In Java...]
Use the `addApplicationOwnerAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().addApplicationOwner(applicationId: "APPLICATION_ID", userId: "OWNER_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().addApplicationOwner("APPLICATION_ID", "OWNER_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().AddApplicationOwner("APPLICATION_ID", "OWNER_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.add_application_owner("APPLICATION_ID", "OWNER_ID")
```

</TabItem>
</Tabs>

## Remove application owner

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.platform().removeApplicationOwner("APPLICATION_ID", "OWNER_ID")
```

:::tip[In Java...]
Use the `removeApplicationOwnerAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.platform().removeApplicationOwner(applicationId: "APPLICATION_ID", userId: "OWNER_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.platform().removeApplicationOwner("APPLICATION_ID", "OWNER_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetPlatform().RemoveApplicationOwner("APPLICATION_ID", "OWNER_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.platform.remove_application_owner("APPLICATION_ID", "OWNER_ID")
```

</TabItem>
</Tabs>

## Get application owners details

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.platform().getApplicationOwnersDetails("APPLICATION_ID")
```

:::tip[In Java...]
Use the `getApplicationOwnersDetailsAsync` function, which returns a `CompletableFuture<List<ApplicationOwnerDetailsResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.platform().getApplicationOwnersDetails(applicationId: "APPLICATION_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.platform().getApplicationOwnersDetails("APPLICATION_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetPlatform().GetApplicationOwnersDetails("APPLICATION_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.platform.get_application_owners_details("APPLICATION_ID")
```

</TabItem>
</Tabs>
