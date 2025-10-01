# Accountless resource

## Login

:::info
When used successfully, the supplied **email** is added to the [context manager](context-manager.md) 
and automatically stored in [secure storage](initialize.md#secure-storage), 
along with the **cloud auth token** and **cloud refresh token** from the response.
:::

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a TokenResponse
val response = sdk.accountless().login(
  email = "EMAIL", 
  password = "PASSWORD"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<TokenResponse>
var response = sdk.accountless().loginAsync("EMAIL", "PASSWORD");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a TokenResponse asynchronously
let response = await sdk.accountless().login(
  email: "EMAIL", 
  password: "PASSWORD"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<TokenResponse>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.accountless().login(
  "EMAIL", 
  "PASSWORD"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<TokenResponse>
var response = await sdk.GetAccountless().Login(
  email: "EMAIL", 
  password: "PASSWORD"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.accountless.login(
  "EMAIL", 
  "PASSWORD"
)
```

</TabItem>
</Tabs>

## Register a new user

After registration, you will need to [verify the email](#verify-email).

:::info
When used successfully, the supplied **email** is added to the [context manager](context-manager.md) 
and automatically stored in [secure storage](initialize.md#secure-storage), 
along with the **cloud auth token** and **cloud refresh token** from the response.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a TokenResponse
val response = sdk.accountless().registration(
  email = "EMAIL", 
  password = "PASSWORD"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<TokenResponse>
var response = sdk.accountless().registrationAsync("EMAIL", "PASSWORD");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a TokenResponse asynchronously
let response = await sdk.accountless().registration(
  email: "EMAIL", 
  password: "PASSWORD", 
  displayName: "DISPLAY_NAME", 
  force: false, 
  publicKey: PUBLIC_KEY
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<TokenResponse>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.accountless().registration(
  "EMAIL", 
  "PASSWORD"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<TokenResponse>
var response = await sdk.GetAccountless().Registration(
  email: "EMAIL", 
  password: "PASSWORD"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.accountless.registration(
  "EMAIL", 
  "PASSWORD"
)
```

</TabItem>
</Tabs>

## Verify email

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.accountless().verifyEmail("CODE")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.accountless().verifyEmailAsync("CODE");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.accountless().verifyEmail(code: "CODE")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.accountless().verifyEmail("CODE");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetAccountless().VerifyEmail("CODE");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.accountless.verify_email("CODE")
```

</TabItem>
</Tabs>

## Password reset

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.accountless().passwordReset("EMAIL")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.accountless().passwordResetAsync("EMAIL");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.accountless().passwordReset(email: "EMAIL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.accountless().passwordReset("EMAIL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetAccountless().PasswordReset("EMAIL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.accountless.password_reset("EMAIL")
```

</TabItem>
</Tabs>

## Password reset verify

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.accountless().passwordResetVerify(
  userId = "USERID", 
  token = "TOKEN", 
  email = "EMAIL"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.accountless().passwordResetVerifyAsync("USERID", "TOKEN", "EMAIL");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.accountless().passwordResetVerify(
  userId: "USERID", 
  token: "TOKEN", 
  email: "EMAIL"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.accountless().passwordResetVerify(
  "USERID", 
  "TOKEN", 
  "EMAIL"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetAccountless().PasswordResetVerify(
  userId: "USERID", 
  token: "TOKEN", 
  password: "EMAIL"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.accountless.password_reset_verify(
  "USERID", 
  "TOKEN", 
  "EMAIL"
)
```

</TabItem>
</Tabs>
