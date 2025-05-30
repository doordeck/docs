# Fusion resource

## Login

:::info  
When used successfully, the auth token from the response is added to the [context manager](context-manager.md).
:::

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.fusion().login("EMAIL", "PASSWORD")
```

:::tip[In Java...]
Use the `fusionAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.fusion().login(email: "EMAIL", password: "PASSWORD")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.fusion().login("EMAIL", "PASSWORD");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetFusion().Login("EMAIL", "PASSWORD");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.fusion.login("EMAIL", "PASSWORD")
```

</TabItem>
</Tabs>

## Get integration type

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.fusion().getIntegrationType()
```

:::tip[In Java...]
Use the `getIntegrationTypeAsync` function, which returns a `CompletableFuture<IntegrationTypeResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.fusion().getIntegrationType()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.fusion().getIntegrationType();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetFusion().GetIntegrationType();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.fusion.get_integration_type()
```

</TabItem>
</Tabs>

## Get integration configuration

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.fusion().getIntegrationConfiguration("demo")
```

:::tip[In Java...]
Use the `getIntegrationConfigurationAsync` function, which returns a `CompletableFuture<List<IntegrationConfigurationResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.fusion().getIntegrationConfiguration(type: "demo")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.fusion().getIntegrationConfiguration("demo");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetFusion().GetIntegrationConfiguration("demo");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.fusion.get_integration_configuration("demo")
```

</TabItem>
</Tabs>

## Enable door

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val controller = Fusion.DemoController()
sdk.fusion().enableDoor("NAME", "SITE_ID", controller)
```

:::tip[In Java...]
Use the `enableDoorAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let controller = Fusion.DemoController()
sdk.fusion().enableDoor(name: "NAME", siteId: "SITE_ID", controller: controller)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const fusion = doordeck.com.doordeck.multiplatform.sdk.model.data.Fusion;
const controller = new fusion.DemoController(8080);
await doordeck.com.doordeck.multiplatform.sdk.api.fusion().enableDoor("NAME", "SITE_ID", controller);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var controller = new DemoController();
await sdk.GetFusion().EnableDoor("NAME", "SITE_ID", controller);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
controller = DemoController(8080)
await sdk.fusion.enable_door("NAME", "SITE_ID", controller)
```

</TabItem>
</Tabs>

## Delete door

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.fusion().deleteDoor("DEVICE_ID")
```

:::tip[In Java...]
Use the `deleteDoorAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.fusion().deleteDoor(deviceId: "DEVICE_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.fusion().deleteDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetFusion().DeleteDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.fusion.delete_door("DEVICE_ID")
```

</TabItem>
</Tabs>

## Get door status

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.fusion().getDoorStatus("DEVICE_ID")
```

:::tip[In Java...]
Use the `getDoorStatusAsync` function, which returns a `CompletableFuture<DoorStateResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.fusion().getDoorStatus(deviceId: "DEVICE_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.fusion().getDoorStatus("DEVICE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetFusion().GetDoorStatus("DEVICE_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.fusion.get_door_status("DEVICE_ID")
```

</TabItem>
</Tabs>

## Start door

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.fusion().startDoor("DEVICE_ID")
```

:::tip[In Java...]
Use the `startDoorAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.fusion().startDoor(deviceId: "DEVICE_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.fusion().startDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetFusion().StartDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.fusion.start_door("DEVICE_ID")
```

</TabItem>
</Tabs>

## Stop door

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.fusion().stopDoor("DEVICE_ID")
```

:::tip[In Java...]
Use the `stopDoorAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.fusion().stopDoor(deviceId: "DEVICE_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.fusion().stopDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetFusion().StopDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.fusion.stop_door("DEVICE_ID")
```

</TabItem>
</Tabs>
