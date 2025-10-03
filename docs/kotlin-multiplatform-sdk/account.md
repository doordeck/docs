# Account resource

## Request a new refresh token

:::warning
This function is only available to users with Doordeck issued auth tokens.
:::

:::info 
* When used successfully, the **cloud auth token** and **cloud refresh token** 
from the response are added to the [context manager](context-manager.md) and automatically stored in [secure storage](initialize.md#secure-storage).
* This function can be used with the [refresh token](context-manager.md#set-cloud-refresh-token) value from the context. 
To use the value from the context, you should pass **null** as the function parameter.
:::

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a TokenResponse
val response = sdk.account().refreshToken("REFRESH_TOKEN")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<TokenResponse>
var response = sdk.account().refreshTokenAsync("REFRESH_TOKEN");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a TokenResponse asynchronously
let response = await sdk.account().refreshToken(refreshToken: "REFRESH_TOKEN")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<TokenResponse>
const response = await com.doordeck.multiplatform.sdk.api.account().refreshToken("REFRESH_TOKEN");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<TokenResponse>
var response = await sdk.GetAccount().RefreshToken("REFRESH_TOKEN");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.account.refresh_token("REFRESH_TOKEN")
```

</TabItem>
</Tabs>

## Logout

:::warning
When used, the [context manager](context-manager.md) restarts, and the values from the 
[secure storage](initialize.md#secure-storage) are automatically deleted.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.account().logout()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.account().logoutAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.account().logout()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.account().logout();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetAccount().Logout();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.account.logout()
```

</TabItem>
</Tabs>

## Register ephemeral key

To register a new ephemeral key, you will need to [generate a new key pair](crypto.md#generate-a-key-pair).

:::info
* When used successfully, both the supplied **private** and **public keys** are added to the 
[context manager](context-manager.md) and automatically stored in [secure storage](initialize.md#secure-storage), 
along with the **user ID** and **user certificate chain** from the response.
* If your [context manager](context-manager.md) already has public and private keys, you can pass **null** 
for those parameters, and those values will be retrieved from the [context manager](context-manager.md) instead.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a RegisterEphemeralKeyResponse
val response = sdk.account().registerEphemeralKey(KEY_PAIR)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<RegisterEphemeralKeyResponse>
var response = sdk.account().registerEphemeralKeyAsync(KEY_PAIR);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a RegisterEphemeralKeyResponse asynchronously
let response = await sdk.account().registerEphemeralKey(
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<RegisterEphemeralKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.account().registerEphemeralKey(
  PUBLIC_KEY, 
  PRIVATE_KEY
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<RegisterEphemeralKeyResponse>
var response = await sdk.GetAccount().RegisterEphemeralKey(
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.account.register_ephemeral_key(
  "BASE64_PUBLIC_KEY", 
  "BASE64_PRIVATE_KEY"
)
```

</TabItem>
</Tabs>

## Register ephemeral key with secondary authentication

To register a new ephemeral key with secondary authentication, 
you will need to [generate a new key pair](crypto.md#generate-a-key-pair). 
After the registration, you will need to [verify the ephemeral key registration](#verify-ephemeral-key-registration).

:::info 
If your [context manager](context-manager.md) already has public key, you can pass **null** for that parameter, 
and the value will be retrieved from the [context manager](context-manager.md) instead.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a RegisterEphemeralKeyWithSecondaryAuthenticationResponse
val response = sdk.account().registerEphemeralKeyWithSecondaryAuthentication(PUBLIC_KEY)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<RegisterEphemeralKeyWithSecondaryAuthenticationResponse>
var response = sdk.account().registerEphemeralKeyWithSecondaryAuthenticationAsync(PUBLIC_KEY);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a RegisterEphemeralKeyWithSecondaryAuthenticationResponse asynchronously
let response = await sdk.account().registerEphemeralKeyWithSecondaryAuthentication(
  publicKey: PUBLIC_KEY, 
  method: null
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<RegisterEphemeralKeyWithSecondaryAuthenticationResponse>
const response = await com.doordeck.multiplatform.sdk.api.account().registerEphemeralKeyWithSecondaryAuthentication(PUBLIC_KEY);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<RegisterEphemeralKeyWithSecondaryAuthenticationResponse>
var response = await sdk.GetAccount().RegisterEphemeralKeyWithSecondaryAuthentication(PUBLIC_KEY);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.account.register_ephemeral_key_with_secondary_authentication("BASE64_PUBLIC_KEY")
```

</TabItem>
</Tabs>

## Verify ephemeral key registration

:::info
* When used successfully, both the supplied **private** and **public keys** are added to the [context manager](context-manager.md) 
and automatically stored in [secure storage](initialize.md#secure-storage), 
along with the **user ID** and **user certificate chain** from the response.
* If your [context manager](context-manager.md) already has public and private keys, you can pass **null** 
for those parameters, and those values will be retrieved from the [context manager](context-manager.md) instead.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a RegisterEphemeralKeyResponse
val response = sdk.account().verifyEphemeralKeyRegistration(
  code = "CODE", 
  keyPair = KEY_PAIR
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<RegisterEphemeralKeyResponse>
var response = sdk.account().verifyEphemeralKeyRegistrationAsync("CODE", KEY_PAIR);
```
</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a RegisterEphemeralKeyResponse asynchronously
let response = await sdk.account().verifyEphemeralKeyRegistration(
  code: "CODE", 
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<RegisterEphemeralKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.account().verifyEphemeralKeyRegistration(
  "CODE", 
  PUBLIC_KEY, 
  PRIVATE_KEY
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<RegisterEphemeralKeyResponse>
var response = await sdk.GetAccount().VerifyEphemeralKeyRegistration(
  code: "CODE", 
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY
 );
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.account.verify_ephemeral_key_registration(
  "CODE", 
  "BASE64_PUBLIC_KEY", 
  "BASE64_PRIVATE_KEY"
)
```

</TabItem>
</Tabs>

## Re-verify email

:::warning
This function is only available to users with Doordeck issued auth tokens.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.account().reverifyEmail()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Unit>
sdk.account().reverifyEmailAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.account().reverifyEmail()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.account().reverifyEmail();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetAccount().ReverifyEmail();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.account.reverify_email()
```

</TabItem>
</Tabs>

## Change password

:::warning
This function is only available to users with Doordeck issued auth tokens.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.account().changePassword(
  oldPassword = "OLD_PASSWORD", 
  newPassword = "NEW_PASSWORD"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Unit>
sdk.account().changePasswordAsync("OLD_PASSWORD", "NEW_PASSWORD");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.account().changePassword(
  oldPassword: "OLD_PASSWORD", 
  newPassword: "NEW_PASSWORD"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.account().changePassword(
  "OLD_PASSWORD", 
  "NEW_PASSWORD"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns Task<object>
await sdk.GetAccount().ChangePassword(
  oldPassword: "OLD_PASSWORD", 
  newPassword: "NEW_PASSWORD"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.account.change_password(
  "OLD_PASSWORD", 
  "NEW_PASSWORD"
)
```

</TabItem>
</Tabs>

## Get user details

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a UserDetailsResponse
val response = sdk.account().getUserDetails()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<UserDetailsResponse>
var response = sdk.account().getUserDetailsAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a UserDetailsResponse asynchronously
let response = await sdk.account().getUserDetails()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<UserDetailsResponse>
const response = await com.doordeck.multiplatform.sdk.api.account().getUserDetails();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<UserDetailsResponse>
var response = await sdk.GetAccount().GetUserDetails();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.account.get_user_details()
```

</TabItem>
</Tabs>

## Update user details

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.account().updateUserDetails("DISPLAY_NAME")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.account().updateUserDetailsAsync("DISPLAY_NAME");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.account().updateUserDetails(displayName: "DISPLAY_NAME")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.account().updateUserDetails("DISPLAY_NAME");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetAccount().UpdateUserDetails("DISPLAY_NAME");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.account.update_user_details("DISPLAY_NAME")
```

</TabItem>
</Tabs>

## Delete account

:::danger
This operation is executed instantly and is irreversible.
:::

:::info
When used, the [context manager](context-manager.md) restarts, and the values 
from the [secure storage](initialize.md#secure-storage) are automatically deleted.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.account().deleteAccount()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.account().deleteAccountAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.account().deleteAccount()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.account().deleteAccount();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetAccount().DeleteAccount();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.account.delete_account()
```

</TabItem>
</Tabs>
