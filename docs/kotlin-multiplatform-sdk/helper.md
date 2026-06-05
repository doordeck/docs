# Helper resource

This function facilitates the upload of a logo into your application in a single call. Below are examples for different platforms.

## Upload platform logo

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.helper().uploadPlatformLogo(
  applicationId = APPLICATION_ID, 
  contentType = "CONTENT_TYPE", 
  image = INPUT_STREAM
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.helper().uploadPlatformLogoAsync(APPLICATION_ID, "CONTENT_TYPE", INPUT_STREAM);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.helper().uploadPlatformLogo(
  applicationId: APPLICATION_ID, 
  contentType: "CONTENT_TYPE", 
  image: IMAGE_BYTES
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.helper().uploadPlatformLogo(
  "APPLICATION_ID", 
  "CONTENT_TYPE", 
  IMAGE_BYTES
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetHelper().UploadPlatformLogo(
  applicationId: APPLICATION_ID, 
  contentType: "CONTENT_TYPE", 
  image: "BASE64_IMAGE"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.helper.upload_platform_logo(
  "APPLICATION_ID", 
  "CONTENT_TYPE", 
  "BASE64_IMAGE"
)
```

</TabItem>
</Tabs>

## Assisted login

Performs the standard login process in a single call. It performs the [login](account.md), generates a new
[key pair](crypto.md#generate-a-key-pair) when needed, and attempts to [register the ephemeral key](account.md#register-ephemeral-key).
If that registration is rejected because the user must verify their identity, it falls back to
[secondary authentication](account.md#register-ephemeral-key-with-secondary-authentication).

:::info
* When used successfully, the **cloud auth token**, **cloud refresh token**, and the generated **key pair**
are added to the [context manager](context-manager.md) and automatically stored in
[secure storage](initialize.md#secure-storage).
* If the response has `requiresVerification = true`, the caller must invoke
[verify ephemeral key registration](account.md#verify-ephemeral-key-registration) with the code received by the
user (email, SMS, or telephone) to complete the process.
* If the response has `requiresRetry = true`, the secondary authentication endpoint was rate-limited and the
caller should retry later.
:::

### Response

| Field                | Type    | Description                                                                                |
|----------------------|---------|--------------------------------------------------------------------------------------------|
| requiresVerification | Boolean | `true` when the caller must complete secondary authentication via `verifyEphemeralKeyRegistration` |
| requiresRetry        | Boolean | `true` when the request was rate-limited and the caller should retry later                 |

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns an AssistedLoginResponse
val response = sdk.helper().assistedLogin(
  email = "EMAIL", 
  password = "PASSWORD"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<AssistedLoginResponse>
var response = sdk.helper().assistedLoginAsync("EMAIL", "PASSWORD");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns an AssistedLoginResponse asynchronously
let response = await sdk.helper().assistedLogin(
  email: "EMAIL", 
  password: "PASSWORD"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<AssistedLoginResponse>
const response = await com.doordeck.multiplatform.sdk.api.helper().assistedLogin(
  "EMAIL", 
  "PASSWORD"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<AssistedLoginResponse>
var response = await sdk.GetHelper().AssistedLogin(
  email: "EMAIL", 
  password: "PASSWORD"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.helper.assisted_login("EMAIL", "PASSWORD")
```

</TabItem>
</Tabs>

## Assisted register ephemeral key

Registers an ephemeral key in a single call. It first tries the standard
[register ephemeral key](account.md#register-ephemeral-key) endpoint and, if that is rejected because the
account is locked, automatically falls back to
[secondary authentication](account.md#register-ephemeral-key-with-secondary-authentication).

:::info
* If your [context manager](context-manager.md) already has a public and private key, you can pass **null**
for those parameters, and the values will be retrieved from the [context manager](context-manager.md) instead.
* If the response has `requiresVerification = true`, the caller must invoke
[verify ephemeral key registration](account.md#verify-ephemeral-key-registration) with the code received by the
user (email, SMS, or telephone) to complete the process.
* If the response has `requiresRetry = true`, the secondary authentication endpoint was rate-limited and the
caller should retry later.
:::

### Response

| Field                | Type    | Description                                                                                |
|----------------------|---------|--------------------------------------------------------------------------------------------|
| requiresVerification | Boolean | `true` when the caller must complete secondary authentication via `verifyEphemeralKeyRegistration` |
| requiresRetry        | Boolean | `true` when the request was rate-limited and the caller should retry later                 |

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns an AssistedRegisterEphemeralKeyResponse
val response = sdk.helper().assistedRegisterEphemeralKey(KEY_PAIR)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<AssistedRegisterEphemeralKeyResponse>
var response = sdk.helper().assistedRegisterEphemeralKeyAsync(KEY_PAIR);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns an AssistedRegisterEphemeralKeyResponse asynchronously
let response = await sdk.helper().assistedRegisterEphemeralKey(
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<AssistedRegisterEphemeralKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.helper().assistedRegisterEphemeralKey(
  PUBLIC_KEY, 
  PRIVATE_KEY
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<AssistedRegisterEphemeralKeyResponse>
var response = await sdk.GetHelper().AssistedRegisterEphemeralKey(
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.helper.assisted_register_ephemeral_key(
  "BASE64_PUBLIC_KEY", 
  "BASE64_PRIVATE_KEY"
)
```

</TabItem>
</Tabs>
