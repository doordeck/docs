# Context manager

The **Context Manager** simplifies the usage of complex SDK functions by reducing the number of parameters required when setting the operation context, authentication tokens, and other session data.

:::info 
All the values that are provided to the context manager are automatically stored in [secure storage](initialize.md#secure-storage).
:::

## Set operation context

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
sdk.contextManager().setOperationContext("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PUBLIC_KEY, PRIVATE_KEY)
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.contextManager().setOperationContext(userId: "USER_ID", certificateChain: USER_CERTIFICATE_CHAIN_LIST, publicKey: PUBLIC_KEY, privateKey: PRIVATE_KEY)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
sdk.contextManager().setOperationContext("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PUBLIC_KEY, PRIVATE_KEY);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.GetContextManager().SetOperationContext("USER_ID", USER_CERTIFICATE_CHAIN_AS_STRING, "BASE64_PUBLIC_KEY", "BASE64_PRIVATE_KEY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.contextManager.set_operation_context("USER_ID", USER_CERTIFICATE_CHAIN_AS_STRING, "BASE64_PUBLIC_KEY", "BASE64_PRIVATE_KEY")
```

</TabItem>
</Tabs>

## Is certificate chain about to expire

Checks if the current certificate chain from the context is about to expire within the next 7 days.

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
val result = sdk.contextManager().isCertificateChainAboutToExpire()
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let result = sdk.contextManager().isCertificateChainAboutToExpire()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const result = sdk.contextManager().isCertificateChainAboutToExpire();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var result = sdk.GetContextManager().IsCertificateChainAboutToExpire();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
result = sdk.contextManager.is_certificate_chain_about_to_expire()
```

</TabItem>
</Tabs>

## Is key pair valid

Checks if the current key pair from the context is valid.

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
val result = sdk.contextManager().isKeyPairValid()
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

## Set cloud auth token

If the SDK was initialized without an authentication token, you can provide or update the token using this function.

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
sdk.contextManager().setCloudAuthToken("AUTH_TOKEN")
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

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
val token = sdk.contextManager().getCloudAuthToken()
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

## Is cloud auth token about to expire

Checks if the current cloud auth token from the context is about to expire within the next 24 hours

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
val result = sdk.contextManager().isCloudAuthTokenAboutToExpire()
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let result = sdk.contextManager().isCloudAuthTokenAboutToExpire()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const result = sdk.contextManager().isCloudAuthTokenAboutToExpire();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var result = sdk.GetContextManager().IsCloudAuthTokenAboutToExpire();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
result = sdk.contextManager.is_cloud_auth_token_about_to_expire()
```

</TabItem>
</Tabs>

## Set cloud refresh token

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
sdk.contextManager().setCloudRefreshToken("REFRESH_TOKEN")
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

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
val token = sdk.contextManager().getCloudRefreshToken()
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

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
sdk.contextManager().setFusionAuthToken("FUSION_AUTH_TOKEN")
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

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
val token = sdk.contextManager().getFusionAuthToken()
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

<Tabs>
<TabItem value="kotlin" label="JVM & Android">

```kotlin showLineNumbers
sdk.contextManager().clearContext()
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

