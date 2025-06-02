# Initialize the SDK

To initialize the SDK, you need to provide an [SdkConfig](#sdk-config-builder) with your desired configuration.

## SDK config builder

The minimum viable `SdkConfig` is `SdkConfig.Builder().build()`, although the following configurations are also available:

|           Configuration           | Method                     |        Default         |
|:---------------------------------:|:---------------------------|:----------------------:|
|          API environment          | `setApiEnvironment`        |       Production       |
|         Cloud auth token          | `setCloudAuthToken`        |           -            |
|        Cloud refresh token        | `setCloudRefreshToken`     |           -            |
|            Fusion host            | `setFusionHost`            | http://localhost:27700 |
| [Secure storage](#secure-storage) | `setSecureStorageOverride` |           -            |

:::info
If you initialize the SDK without a cloud auth token, you will need to either provide one manually through the [context manager](context-manager.md#set-cloud-auth-token) or call the [login](accountless.md#login) function to access most SDK functionalities.
:::

## Secure storage

By default, the SDK stores the context information on its own, as shown in the following table:

| Platform | Storage                      |
|:--------:|------------------------------|
| Android  | `EncryptedSharedPreferences` |
|   JVM    | `Memory`                     |
|   iOS    | `Keychain`                   |
|  macOS   | `Keychain`                   |
|    JS    | `LocalStorage`               |
| Windows  | `Memory`                     |

:::info
To override the default secure storage, you must implement the `SecureStorage` interface and pass the class through the `setSecureStorageOverride` function from `SdkConfig` builder.
:::

## Initialize

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val sdk = KDoordeckFactory.initialize(SdkConfig.Builder().setCloudAuthToken("AUTH_TOKEN").build())
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let sdk = KDoordeckFactory().initialize(sdkConfig: SdkConfig.Builder().setCloudAuthToken(cloudAuthToken: "AUTH_TOKEN").build())
```

</TabItem>
<TabItem value="js" label="JavaScript">

```javascript showLineNumbers
import doordeck from '@doordeck/doordeck-headless-sdk';
const sdk = doordeck.com.doordeck.multiplatform.sdk.KDoordeckFactory.initialize(new SdkConfig.Builder().setCloudAuthToken("AUTH_TOKEN").build());
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var sdk = new DoordeckSdk(cloudAuthToken: "AUTH_TOKEN");
```

:::info
You should also call `sdk.Release();` at the end of your application’s lifecycle to release the SDK resources.
:::

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
sdk = doordeck_headless_sdk.InitializeSdk("AUTH_TOKEN")
```

</TabItem>
</Tabs>
