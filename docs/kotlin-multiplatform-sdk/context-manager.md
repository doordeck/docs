# Context manager

The **Context Manager** simplifies the usage of complex SDK functions by reducing the number of parameters 
required when setting the operation context, authentication tokens, and other session data.

:::info 
All the values that are provided to the context manager are automatically stored in [secure storage](initialize.md#secure-storage).
:::

## Set API environment

Changes the environment the SDK operates against. It can be changed at any time, although it is recommended to
set it up through the [SdkConfig builder](initialize.md#sdk-config-builder) instead.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setApiEnvironment(ApiEnvironment.PROD)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setApiEnvironment(ApiEnvironment.PROD);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setApiEnvironment(apiEnvironment: ApiEnvironment.prod)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setApiEnvironment("PROD");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Not implemented yet
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
// Not implemented yet
```

</TabItem>
</Tabs>

## Get API environment

Returns the environment the SDK is currently operating against. Defaults to `PROD` when it has never been set.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns an ApiEnvironment
val apiEnvironment = sdk.contextManager().getApiEnvironment()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns an ApiEnvironment
var apiEnvironment = sdk.contextManager().getApiEnvironment();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns an ApiEnvironment
let apiEnvironment = sdk.contextManager().getApiEnvironment()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a string
const apiEnvironment = sdk.contextManager().getApiEnvironment();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns an ApiEnvironment
var apiEnvironment = sdk.GetContextManager().GetApiEnvironment();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a str
apiEnvironment = sdk.contextManager.get_api_environment()
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

## Set fusion host

Sets the host of the on-premise Fusion server used by the [fusion resource](fusion.md). It can be changed at any
time, although it is recommended to set it up through the [SdkConfig builder](initialize.md#sdk-config-builder)
instead.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setFusionHost(URI("http://localhost:27700"))
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setFusionHost(URI.create("http://localhost:27700"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setFusionHost(host: NSURLComponents(string: "http://localhost:27700")!)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setFusionHost("http://localhost:27700");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().SetFusionHost("http://localhost:27700");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.set_fusion_host("http://localhost:27700")
```

</TabItem>
</Tabs>

## Get fusion host

Returns the currently configured Fusion host. Defaults to `http://localhost:27700` when it has never been set.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a URI
val fusionHost = sdk.contextManager().getFusionHost()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a URI
var fusionHost = sdk.contextManager().getFusionHost();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns an NSURLComponents
let fusionHost = sdk.contextManager().getFusionHost()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a string
const fusionHost = sdk.contextManager().getFusionHost();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a string
var fusionHost = sdk.GetContextManager().GetFusionHost();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a str
fusionHost = sdk.contextManager.get_fusion_host()
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

## Set user ID

Sets the user identifier used by the secure [lock operations](lock-operations.md). It is usually set for you by
[set operation context](#set-operation-context).

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setUserId(USER_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setUserId(USER_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setUserId(userId: USER_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setUserId("USER_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().SetUserId(USER_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.set_user_id("USER_ID")
```

</TabItem>
</Tabs>

## Get user ID

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a UUID
val userId = sdk.contextManager().getUserId()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a UUID
var userId = sdk.contextManager().getUserId();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns an NSUUID
let userId = sdk.contextManager().getUserId()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a string
const userId = sdk.contextManager().getUserId();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Guid
var userId = sdk.GetContextManager().GetUserId();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a str
userId = sdk.contextManager.get_user_id()
```

</TabItem>
</Tabs>

## Set user email

Sets the email address associated with the context. It is set automatically by
[login](accountless.md#login) and [registration](accountless.md#register-a-new-user).

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setUserEmail("EMAIL")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setUserEmail("EMAIL");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setUserEmail(email: "EMAIL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setUserEmail("EMAIL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().SetUserEmail("EMAIL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.set_user_email("EMAIL")
```

</TabItem>
</Tabs>

## Get user email

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val email = sdk.contextManager().getUserEmail()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var email = sdk.contextManager().getUserEmail();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let email = sdk.contextManager().getUserEmail()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const email = sdk.contextManager().getUserEmail();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var email = sdk.GetContextManager().GetUserEmail();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
email = sdk.contextManager.get_user_email()
```

</TabItem>
</Tabs>

## Set certificate chain

Sets the certificate chain used to sign the secure [lock operations](lock-operations.md). It is usually set for
you by [set operation context](#set-operation-context) or by
[register ephemeral key](account.md#register-ephemeral-key).

:::info
Only the **first** certificate of the chain is inspected by [is certificate chain invalid or expired](#is-certificate-chain-invalid-or-expired).
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setCertificateChain(USER_CERTIFICATE_CHAIN_LIST)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setCertificateChain(USER_CERTIFICATE_CHAIN_LIST);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setCertificateChain(certificateChain: USER_CERTIFICATE_CHAIN_LIST)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setCertificateChain(USER_CERTIFICATE_CHAIN_LIST);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Not implemented yet
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
// Not implemented yet
```

</TabItem>
</Tabs>

## Get certificate chain

Returns the stored certificate chain, or **null** when none has been set.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<X509Certificate>
val certificateChain = sdk.contextManager().getCertificateChain()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a List<X509Certificate>
var certificateChain = sdk.contextManager().getCertificateChain();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a [String]
let certificateChain = sdk.contextManager().getCertificateChain()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a string[]
const certificateChain = sdk.contextManager().getCertificateChain();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Not implemented yet
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
// Not implemented yet
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

## Set key pair

Sets the key pair used to sign the secure [lock operations](lock-operations.md). It is usually set for you by
[set operation context](#set-operation-context), [assisted login](helper.md#assisted-login) or
[assisted register](helper.md#assisted-register).

:::info
* Setting a new key pair does **not** mark it as verified. Use [set key pair verified](#set-key-pair-verified),
  or register it through [register ephemeral key](account.md#register-ephemeral-key).
* Keys generated on any platform are accepted — see [crypto](crypto.md) for the supported encodings.
  :::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setKeyPair(KEY_PAIR)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setKeyPair(KEY_PAIR);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setKeyPair(
  publicKey: PUBLIC_KEY, 
  privateKey: PRIVATE_KEY
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setKeyPair(PUBLIC_KEY, PRIVATE_KEY);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Not implemented yet
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
// Not implemented yet
```

</TabItem>
</Tabs>

## Get key pair

Returns the stored key pair, or **null** when either the public or the private key is missing.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a KeyPair
val keyPair = sdk.contextManager().getKeyPair()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a KeyPair
var keyPair = sdk.contextManager().getKeyPair();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Crypto.KeyPair
let keyPair = sdk.contextManager().getKeyPair()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Crypto.KeyPair
const keyPair = sdk.contextManager().getKeyPair();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Not implemented yet
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
// Not implemented yet
```

</TabItem>
</Tabs>

## Set key pair verified

Marks a public key as verified, meaning it has successfully completed
[two-factor verification](account.md#verify-ephemeral-key-registration). Pass **null** to clear the verification.

:::info
[Is key pair verified](#is-key-pair-verified) compares the value stored here against the current public key, so setting a key pair that does not match clears the verified state in practice.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
sdk.contextManager().setKeyPairVerified(PUBLIC_KEY)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
sdk.contextManager().setKeyPairVerified(PUBLIC_KEY);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setKeyPairVerified(publicKey: PUBLIC_KEY)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setKeyPairVerified(PUBLIC_KEY);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Not implemented yet
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
// Not implemented yet
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

