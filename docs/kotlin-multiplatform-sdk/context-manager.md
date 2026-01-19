# Context manager

The **Context Manager** simplifies the usage of complex SDK functions by reducing the number of parameters 
required when setting the operation context, authentication tokens, and other session data.

:::info 
All the values that are provided to the context manager are automatically stored in [secure storage](initialize.md#secure-storage).
:::

## Set operation context

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setOperationContext(
  userId = USER_ID,
  certificateChain = USER_CERTIFICATE_CHAIN_LIST,
  keyPair = KEY_PAIR,
  isKeyPairVerified = IS_KEY_PAIR_VERIFIED
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setOperationContext(USER_ID, USER_CERTIFICATE_CHAIN_LIST, KEY_PAIR, IS_KEY_PAIR_VERIFIED);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setOperationContext(
  userId: USER_ID, 
  certificateChain: USER_CERTIFICATE_CHAIN_LIST, 
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY,
  isKeyPairVerified: IS_KEY_PAIR_VERIFIED
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setOperationContext(
  "USER_ID", 
  USER_CERTIFICATE_CHAIN_LIST, 
  PUBLIC_KEY, 
  PRIVATE_KEY
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().SetOperationContext(
  userId: USER_ID, 
  certificateChain: USER_CERTIFICATE_CHAIN, 
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.set_operation_context(
  "USER_ID", 
  "USER_CERTIFICATE_CHAIN_AS_STRING", 
  "BASE64_PUBLIC_KEY", 
  "BASE64_PRIVATE_KEY"
)
```

</TabItem>
</Tabs>

## Get Context State

Checks the state of the context by verifying that the [auth token is valid](#is-cloud-auth-token-invalid-or-expired), 
the [key pair is valid](#is-key-pair-valid) and [verified](#is-key-pair-verified),
and the [certificate chain is valid](#is-certificate-chain-invalid-or-expired). 
When **checkServerInvalidation** is set to **true**, it also checks if the auth token has been invalidated on the backend. 
This requires a network request. When **checkServerInvalidation** is **false**, this server check is skipped, 
meaning the auth token might be accepted even if it has been invalidated.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a ContextState
val result = sdk.contextManager().getContextState(true)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<ContextState>
var result = sdk.contextManager().getContextStateAsync(true);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a ContextState asynchronously
let result = await sdk.contextManager().getContextState(checkServerInvalidation: true)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<string>
const result = await sdk.contextManager().getContextState(true);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<ContextState>
var result = await sdk.GetContextManager().GetContextState(checkServerInvalidation: true);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
result = await sdk.contextManager.get_context_state(True)
```

</TabItem>
</Tabs>

## Is certificate chain invalid or expired

Checks if the current certificate chain from the context is invalid or expired 
(we consider it expired if it will expire within the next 7 days).

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val result = sdk.contextManager().isCertificateChainInvalidOrExpired()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var result = sdk.contextManager().isCertificateChainInvalidOrExpired();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let result = sdk.contextManager().isCertificateChainInvalidOrExpired()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const result = sdk.contextManager().isCertificateChainInvalidOrExpired();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var result = sdk.GetContextManager().IsCertificateChainInvalidOrExpired();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
result = sdk.contextManager.is_certificate_chain_invalid_or_expired()
```

</TabItem>
</Tabs>

## Is key pair valid

Checks if the current key pair from the context is valid.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val result = sdk.contextManager().isKeyPairValid()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var result = sdk.contextManager().isKeyPairValid();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let result = sdk.contextManager().isKeyPairValid()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const result = sdk.contextManager().isKeyPairValid();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var result = sdk.GetContextManager().IsKeyPairValid();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
result = sdk.contextManager.is_key_pair_valid()
```

</TabItem>
</Tabs>

## Is key pair verified

Checks if the current key pair from the context has been verified.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val result = sdk.contextManager().isKeyPairVerified()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var result = sdk.contextManager().isKeyPairVerified();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let result = sdk.contextManager().isKeyPairVerified()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const result = sdk.contextManager().isKeyPairVerified();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var result = sdk.GetContextManager().IsKeyPairVerified();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
result = sdk.contextManager.is_key_pair_verified()
```

</TabItem>
</Tabs>

## Set cloud auth token

If the SDK was initialized without an authentication token, you can provide or update the token using this function.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setCloudAuthToken("AUTH_TOKEN")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setCloudAuthToken("AUTH_TOKEN");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setCloudAuthToken(token: "AUTH_TOKEN")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setCloudAuthToken("AUTH_TOKEN");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().SetCloudAuthToken("AUTH_TOKEN");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.set_cloud_auth_token("AUTH_TOKEN")
```

</TabItem>
</Tabs>

## Get cloud auth token

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val token = sdk.contextManager().getCloudAuthToken()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var token = sdk.contextManager().getCloudAuthToken();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let token = sdk.contextManager().getCloudAuthToken()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const token = sdk.contextManager().getCloudAuthToken();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var token = sdk.GetContextManager().GetCloudAuthToken();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
token = sdk.contextManager.get_cloud_auth_token()
```

</TabItem>
</Tabs>

## Is cloud auth token invalid or expired

Checks if the current cloud auth token from the context is invalid, expired 
(we consider it expired if it will expire within the next 24 hours) or invalidated.
When **checkServerInvalidation** is set to **true**, it also checks if the auth token has been invalidated on the backend. 
This requires a network request. When **checkServerInvalidation** is **false**, this server check is skipped, 
meaning the auth token might be accepted even if it has been invalidated on the server.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a Boolean
val result = sdk.contextManager().isCloudAuthTokenInvalidOrExpired(true)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Boolean>
var result = sdk.contextManager().isCloudAuthTokenInvalidOrExpiredAsync(true);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Bool asynchronously
let result = await sdk.contextManager().isCloudAuthTokenInvalidOrExpired(checkServerInvalidation: true)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<boolean>
const result = await sdk.contextManager().isCloudAuthTokenInvalidOrExpired(true);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<bool>
var result = await sdk.GetContextManager().IsCloudAuthTokenInvalidOrExpired(checkServerInvalidation: true);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
result = await sdk.contextManager.is_cloud_auth_token_invalid_or_expired(True)
```

</TabItem>
</Tabs>

## Set cloud refresh token

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setCloudRefreshToken("REFRESH_TOKEN")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setCloudRefreshToken("REFRESH_TOKEN");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setCloudRefreshToken(token: "REFRESH_TOKEN")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setCloudRefreshToken("REFRESH_TOKEN");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().SetCloudRefreshToken("REFRESH_TOKEN");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.set_cloud_refresh_token("REFRESH_TOKEN")
```

</TabItem>
</Tabs>

## Get cloud refresh token

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val token = sdk.contextManager().getCloudRefreshToken()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var token = sdk.contextManager().getCloudRefreshToken();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let token = sdk.contextManager().getCloudRefreshToken()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const token = sdk.contextManager().getCloudRefreshToken();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var token = sdk.GetContextManager().GetCloudRefreshToken();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
token = sdk.contextManager.get_cloud_refresh_token()
```

</TabItem>
</Tabs>

## Set fusion auth token

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setFusionAuthToken("FUSION_AUTH_TOKEN")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setFusionAuthToken("FUSION_AUTH_TOKEN");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setFusionAuthToken(token: "FUSION_AUTH_TOKEN")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setFusionAuthToken("FUSION_AUTH_TOKEN");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().SetFusionAuthToken("FUSION_AUTH_TOKEN");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.set_fusion_auth_token("FUSION_AUTH_TOKEN")
```

</TabItem>
</Tabs>

## Get fusion auth token

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val token = sdk.contextManager().getFusionAuthToken()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var token = sdk.contextManager().getFusionAuthToken();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let token = sdk.contextManager().getFusionAuthToken()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const token = sdk.contextManager().getFusionAuthToken();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var token = sdk.GetContextManager().GetFusionAuthToken();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
token = sdk.contextManager.get_fusion_auth_token()
```

</TabItem>
</Tabs>

## Clear context

This function removes all stored context fields from the secure storage.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().clearContext()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().clearContext();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().clearContext()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().clearContext();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().ClearContext();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.clear_context()
```

</TabItem>
</Tabs>

