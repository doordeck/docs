# Accountless resource

## Login

:::info
When used successfully, the cloud auth token and cloud refresh token from the response are added to the [context manager](context-manager.md) and automatically stored in [secure storage](initialize.md#secure-storage).
:::

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.accountless().login("EMAIL", "PASSWORD")
```

:::tip[In Java...]
Use the `loginAsync` function, which returns a `CompletableFuture<TokenResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.accountless().login(email: "EMAIL", password: "PASSWORD")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.accountless().login("EMAIL", "PASSWORD");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetAccountless().Login("EMAIL", "PASSWORD");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.accountless.login("EMAIL", "PASSWORD")
```

</TabItem>
</Tabs>

## Register a new user

After registration, you will need to [verify the email](#verify-email)

:::info
When used successfully, the cloud auth token and cloud refresh token from the response are added to the [context manager](context-manager.md) and automatically stored in [secure storage](initialize.md#secure-storage).
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.accountless().registration("EMAIL", "PASSWORD", "DISPLAY_NAME", false, PUBLIC_KEY)
```

:::tip[In Java...]
Use the `registrationAsync` function, which returns a `CompletableFuture<TokenResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.accountless().registration(email: "EMAIL", password: "PASSWORD", displayName: "DISPLAY_NAME", force: false, publicKey: PUBLIC_KEY)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.accountless().registration("EMAIL", "PASSWORD", "DISPLAY_NAME", false, PUBLIC_KEY);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetAccountless().Registration("EMAIL", "PASSWORD", "DISPLAY_NAME", false, "BASE64_PUBLIC_KEY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.accountless.registration("EMAIL", "PASSWORD", "DISPLAY_NAME", False, "BASE64_PUBLIC_KEY")
```

</TabItem>
</Tabs>

## Verify email

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.accountless().verifyEmail("CODE")
```

:::tip[In Java...]
Use the `verifyEmailAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.accountless().verifyEmail(code: "CODE")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.accountless().verifyEmail("CODE");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetAccountless().VerifyEmail("CODE");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.accountless.verify_email("CODE")
```

</TabItem>
</Tabs>

## Password reset

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.accountless().passwordReset("EMAIL")
```

:::tip[In Java...]
Use the `passwordResetAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.accountless().passwordReset(email: "EMAIL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.accountless().passwordReset("EMAIL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetAccountless().PasswordReset("EMAIL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.accountless.password_reset("EMAIL")
```

</TabItem>
</Tabs>

## Password reset verify

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.accountless().passwordResetVerify("USERID", "TOKEN", "EMAIL")
```

:::tip[In Java...]
Use the `passwordResetVerify` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.accountless().passwordResetVerify(userId: "USERID", token: "TOKEN", email: "EMAIL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.accountless().passwordResetVerify("USERID", "TOKEN", "EMAIL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetAccountless().PasswordResetVerify("USERID", "TOKEN", "EMAIL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.accountless.password_reset_verify("USERID", "TOKEN", "EMAIL")
```

</TabItem>
</Tabs>
