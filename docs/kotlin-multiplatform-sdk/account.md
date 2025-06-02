# Account resource

## Request a new refresh token

:::warning
This function is only available to users with Doordeck issued auth tokens.
:::

:::info 
* When used successfully, the cloud auth token and cloud refresh token from the response are added to the [context manager](context-manager.md) and automatically stored in [secure storage](initialize.md#secure-storage).
* This function can be used with the [refresh token](context-manager.md#set-cloud-refresh-token) value from the context. To use the value from the context, you should pass null as the function parameter.
:::

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.account().refreshToken("REFRESH_TOKEN")
```

:::tip[In Java...]
Use the `refreshTokenAsync` function, which returns a `CompletableFuture<TokenResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.account().refreshToken(refreshToken: "REFRESH_TOKEN")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.account().refreshToken("REFRESH_TOKEN");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetAccount().RefreshToken("REFRESH_TOKEN");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.account.refresh_token("REFRESH_TOKEN")
```

</TabItem>
</Tabs>

## Logout

:::warning
When used, the [context manager](context-manager.md) restarts, and the values from the [secure storage](initialize.md#secure-storage) are automatically deleted.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.account().logout()
```

:::tip[In Java...]
Use the `logoutAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.account().logout()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.account().logout();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetAccount().Logout();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.account.logout()
```

</TabItem>
</Tabs>

## Register ephemeral key

To register a new ephemeral key, you will need to [generate a new key pair](crypto.md#generate-a-key-pair).

:::info
When used successfully, the user ID and user certificate chain from the response are added to the [context manager](context-manager.md) and automatically stored in [secure storage](initialize.md#secure-storage).
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.account().registerEphemeralKey(PUBLIC_KEY)
```

:::tip[In Java...]
Use the `registerEphemeralKeyAsync` function, which returns a `CompletableFuture<RegisterEphemeralKeyResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.account().registerEphemeralKey(publicKey: PUBLIC_KEY)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.account().registerEphemeralKey(PUBLIC_KEY);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetAccount().RegisterEphemeralKey("BASE64_PUBLIC_KEY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.account.register_ephemeral_key("BASE64_PUBLIC_KEY")
```

</TabItem>
</Tabs>

## Register ephemeral key with secondary authentication

To register a new ephemeral key with secondary authentication, you will need to [generate a new key pair](crypto.md#generate-a-key-pair). After the registration, you will need to [verify the ephemeral key registration](#verify-ephemeral-key-registration).

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.account().registerEphemeralKeyWithSecondaryAuthentication(PUBLIC_KEY)
```

:::tip[In Java...]
Use the `registerEphemeralKeyWithSecondaryAuthenticationAsync` function, which returns a `CompletableFuture<RegisterEphemeralKeyWithSecondaryAuthenticationResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.account().registerEphemeralKeyWithSecondaryAuthentication(publicKey: PUBLIC_KEY, method: null)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const twoFactorMethod = doordeck.com.doordeck.multiplatform.sdk.model.common.TwoFactorMethod;
const response = await doordeck.com.doordeck.multiplatform.sdk.api.account().registerEphemeralKeyWithSecondaryAuthentication(PUBLIC_KEY, twoFactorMethod.EMAIL);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetAccount().RegisterEphemeralKeyWithSecondaryAuthentication("BASE64_PUBLIC_KEY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.account.register_ephemeral_key_with_secondary_authentication("BASE64_PUBLIC_KEY")
```

</TabItem>
</Tabs>

## Verify ephemeral key registration

:::info  
When used successfully, the user ID and user certificate chain from the response are added to the [context manager](context-manager.md) and automatically stored in [secure storage](initialize.md#secure-storage).
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.account().verifyEphemeralKeyRegistration("CODE", PRIVATE_KEY)
```

:::tip[In Java...]
Use the `verifyEphemeralKeyRegistrationAsync` function, which returns a `CompletableFuture<RegisterEphemeralKeyResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.account().verifyEphemeralKeyRegistration(code: "CODE", privateKey: PRIVATE_KEY)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.account().verifyEphemeralKeyRegistration("CODE", PRIVATE_KEY);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetAccount().VerifyEphemeralKeyRegistration("CODE", "BASE64_PRIVATE_KEY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.account.verify_ephemeral_key_registration("CODE", "BASE64_PRIVATE_KEY")
```

</TabItem>
</Tabs>

## Re-verify email

:::warning
This function is only available to users with Doordeck issued auth tokens.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.account().reverifyEmail()
```

:::tip[In Java...]
Use the `reverifyEmailAsync` function, which returns a `CompletableFuture<Unit>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.account().reverifyEmail()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.account().reverifyEmail();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetAccount().ReverifyEmail();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.account.reverify_email()
```

</TabItem>
</Tabs>

## Change password

:::warning
This function is only available to users with Doordeck issued auth tokens.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.account().changePassword("OLD_PASSWORD", "NEW_PASSWORD")
```

:::tip[In Java...]
Use the `changePasswordAsync` function, which returns a `CompletableFuture<Unit>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.account().changePassword(oldPassword: "OLD_PASSWORD", newPassword: "NEW_PASSWORD")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.account().changePassword("OLD_PASSWORD", "NEW_PASSWORD");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetAccount().ChangePassword("OLD_PASSWORD", "NEW_PASSWORD");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.account.change_password("OLD_PASSWORD", "NEW_PASSWORD")
```

</TabItem>
</Tabs>

## Get user details

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.account().getUserDetails()
```

:::tip[In Java...]
Use the `getUserDetailsAsync` function, which returns a `CompletableFuture<UserDetailsResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.account().getUserDetails()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.account().getUserDetails();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetAccount().GetUserDetails();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.account.get_user_details()
```

</TabItem>
</Tabs>

## Update user details

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.account().updateUserDetails("DISPLAY_NAME")
```

:::tip[In Java...]
Use the `updateUserDetailsAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.account().updateUserDetails(displayName: "DISPLAY_NAME")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.account().updateUserDetails("DISPLAY_NAME");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetAccount().UpdateUserDetails("DISPLAY_NAME");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.account.update_user_details("DISPLAY_NAME")
```

</TabItem>
</Tabs>

## Delete account

:::danger
This operation is executed instantly and is irreversible.
:::

:::info
When used, the [context manager](context-manager.md) restarts, and the values from the [secure storage](initialize.md#secure-storage) are automatically deleted.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.account().deleteAccount()
```

:::tip[In Java...]
Use the `deleteAccountAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.account().deleteAccount()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.account().deleteAccount();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetAccount().DeleteAccount();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.account.delete_account()
```

</TabItem>
</Tabs>
