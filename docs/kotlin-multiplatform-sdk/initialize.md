# Initialize the SDK

To initialize the SDK, you need to provide an [SdkConfig](#sdk-config-builder) with your desired configuration.

## SDK config builder

The minimum viable `SdkConfig` is `SdkConfig.Builder().build()`, although the following configurations are also available:

|           Configuration           |           Method            |        Default         |
|:---------------------------------:|:---------------------------:|:----------------------:|
|          API environment          |     `setApiEnvironment`     |       Production       |
|         Cloud auth token          |     `setCloudAuthToken`     |           -            |
|        Cloud refresh token        |   `setCloudRefreshToken`    |           -            |
|            Fusion host            |       `setFusionHost`       | http://localhost:27700 |
| [Secure storage](#secure-storage) | `setSecureStorageOverride`  |           -            |
|           Debug Logging           |      `setDebugLogging`      |         false          |

:::info
* If you initialize the SDK without a cloud auth token, you will need to either provide one manually through the [context manager](context-manager.md#set-cloud-auth-token) or call the [login](accountless.md#login) function to access most SDK functionalities.
* The SDK logs at **info** level by default. Enabling debug logging also prints the **debug** messages.
:::

## Secure storage

By default, the SDK stores the context information on its own, as shown in the following table:

|       Platform        |           Storage            |
|:---------------------:|:----------------------------:|
|        Android        | `EncryptedSharedPreferences` |
|          JVM          |           `Memory`           |
| iOS / macOS / watchOS |          `Keychain`          |
|      JS Browser       |        `LocalStorage`        |
|        JS Node        |           `Memory`           |
|      C# / Python      |           `Memory`           |

:::info
To override the default secure storage, you must implement the `SecureStorage` interface and pass the class through the `setSecureStorageOverride` function from `SdkConfig` builder.
:::

## Initialize

Initialization sets up the HTTP clients and the crypto provider, and synchronizes the SDK clock with the server
(waiting up to 10 seconds for the first synchronization). If it fails, the acquired resources are released and
the exception is rethrown. Initializing an already initialized SDK throws an `SdkException`; [release](#release)
it first.

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val sdkConfig = SdkConfig.Builder()
  .setCloudAuthToken("AUTH_TOKEN")
  .build()
val sdk = KDoordeckFactory.initialize(sdkConfig)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var sdkConfig = SdkConfig.Builder()
  .setCloudAuthToken("AUTH_TOKEN")
  .build(); 
var sdk = KDoordeckFactory.INSTANCE.initializeAsync(sdkConfig);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let sdkConfig = SdkConfig.Builder()
  .setCloudAuthToken(cloudAuthToken: "AUTH_TOKEN")
  .build()
let sdk = await KDoordeckFactory().initialize(sdkConfig: sdkConfig)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```javascript showLineNumbers
import { com } from "@doordeck/doordeck-headless-sdk";

const sdk = await com.doordeck.multiplatform.sdk.KDoordeckFactory.initialize(
  new com.doordeck.multiplatform.sdk.config.SdkConfig.Builder()
    .setCloudAuthToken("AUTH_TOKEN")
    .build(),
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var sdk = new DoordeckSdk(cloudAuthToken: "AUTH_TOKEN");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk = doordeck_headless_sdk.InitializeSdk(cloud_auth_token="AUTH_TOKEN")
```

</TabItem>
</Tabs>

## Release

Call it at the end of your application's lifecycle. It stops the background tasks and closes the HTTP clients,
giving the in-flight requests up to 5 seconds to finish. The stored [context](context-manager.md) is kept, so
releasing the SDK does not log the user out. Releasing an SDK that is not initialized does nothing.

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
KDoordeckFactory.release()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
KDoordeckFactory.INSTANCE.releaseAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
await KDoordeckFactory().release()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```javascript showLineNumbers
await com.doordeck.multiplatform.sdk.KDoordeckFactory.release();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
sdk.Release();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk.release()
```

</TabItem>
</Tabs>
