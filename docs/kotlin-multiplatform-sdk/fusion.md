# Fusion resource

## Login

:::info  
When used successfully, the **auth token** from the response is added to the [context manager](context-manager.md).
:::

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a FusionLoginResponse
val response = sdk.fusion().login(
  email = "EMAIL", 
  password = "PASSWORD"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<FusionLoginResponse>
var response = sdk.fusion().loginAsync("EMAIL", "PASSWORD");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a FusionLoginResponse asynchronously
let response = await sdk.fusion().login(
  email: "EMAIL", 
  password: "PASSWORD"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<FusionLoginResponse>
const response = await com.doordeck.multiplatform.sdk.api.fusion().login(
  "EMAIL", 
  "PASSWORD"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<FusionLoginResponse>
var response = await sdk.GetFusion().Login(
  email: "EMAIL", 
  password: "PASSWORD"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.fusion.login(
  "EMAIL", 
  "PASSWORD"
)
```

</TabItem>
</Tabs>

## Get integration type

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a IntegrationTypeResponse
val response = sdk.fusion().getIntegrationType()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<IntegrationTypeResponse>
var response = sdk.fusion().getIntegrationTypeAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a IntegrationTypeResponse asynchronously
let response = await sdk.fusion().getIntegrationType()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<IntegrationTypeResponse>
const response = await com.doordeck.multiplatform.sdk.api.fusion().getIntegrationType();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<IntegrationTypeResponse>
var response = await sdk.GetFusion().GetIntegrationType();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.fusion.get_integration_type()
```

</TabItem>
</Tabs>

## Get integration configuration

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<IntegrationConfigurationResponse>
val response = sdk.fusion().getIntegrationConfiguration("CONTROLLER_TYPE")
```

</TabItem>
<TabItem value="java" label="Java">

```java 
// Returns a CompletableFuture<List<IntegrationConfigurationResponse>>
var response = sdk.fusion().getIntegrationConfigurationAsync("CONTROLLER_TYPE");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<IntegrationConfigurationResponse> asynchronously
let response = await sdk.fusion().getIntegrationConfiguration(type: "CONTROLLER_TYPE")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<IntegrationConfigurationResponse>>
const response = await com.doordeck.multiplatform.sdk.api.fusion().getIntegrationConfiguration("CONTROLLER_TYPE");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<IntegrationConfigurationResponse>>
var response = await sdk.GetFusion().GetIntegrationConfiguration("CONTROLLER_TYPE");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.fusion.get_integration_configuration("CONTROLLER_TYPE")
```

</TabItem>
</Tabs>

## Enable door

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val controller = Fusion.DemoController()
// Returns Unit
sdk.fusion().enableDoor(
  name = "NAME",
  siteId = SITE_ID, 
  controller = controller
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var controller = Fusion.DemoController();
// Returns a CompletableFuture<Void>
sdk.fusion().enableDoorAsync("NAME", SITE_ID, controller);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let controller = Fusion.DemoController()
// Returns Void asynchronously
await sdk.fusion().enableDoor(
  name: "NAME", 
  siteId: SITE_ID, 
  controller: controller
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const fusion = com.doordeck.multiplatform.sdk.model.data.Fusion;
const controller = new fusion.DemoController(8080);
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.fusion().enableDoor(
  "NAME", 
  "SITE_ID", 
  controller
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var controller = new DemoController();
// Returns a Task<object>
await sdk.GetFusion().EnableDoor(
  name: "NAME", 
  siteId: SITE_ID, 
  controller: controller
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
controller = DemoController(8080)
# Returns a Future[SimpleNamespace]
await sdk.fusion.enable_door(
  "NAME", 
  "SITE_ID", 
  controller
)
```

</TabItem>
</Tabs>

## Delete door

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.fusion().deleteDoor(DEVICE_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.fusion().deleteDoorAsync(DEVICE_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.fusion().deleteDoor(deviceId: DEVICE_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.fusion().deleteDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns Task<object>
await sdk.GetFusion().DeleteDoor(DEVICE_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.fusion.delete_door("DEVICE_ID")
```

</TabItem>
</Tabs>

## Get door status

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a DoorStateResponse
val response = sdk.fusion().getDoorStatus(DEVICE_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns CompletableFuture<DoorStateResponse>
var response = sdk.fusion().getDoorStatusAsync(DEVICE_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a DoorStateResponse asynchronously
let response = await sdk.fusion().getDoorStatus(deviceId: DEVICE_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<DoorStateResponse>
const response = await com.doordeck.multiplatform.sdk.api.fusion().getDoorStatus("DEVICE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<DoorStateResponse>
var response = await sdk.GetFusion().GetDoorStatus(DEVICE_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.fusion.get_door_status("DEVICE_ID")
```

</TabItem>
</Tabs>

## Start door

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.fusion().startDoor(DEVICE_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.fusion().startDoorAsync(DEVICE_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.fusion().startDoor(deviceId: DEVICE_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns Promise<any>
await com.doordeck.multiplatform.sdk.api.fusion().startDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetFusion().StartDoor(DEVICE_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.fusion.start_door("DEVICE_ID")
```

</TabItem>
</Tabs>

## Stop door

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.fusion().stopDoor(DEVICE_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns CompletableFuture<Void>
sdk.fusion().stopDoorAsync(DEVICE_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.fusion().stopDoor(deviceId: DEVICE_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.fusion().stopDoor("DEVICE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetFusion().StopDoor(DEVICE_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.fusion.stop_door("DEVICE_ID")
```

</TabItem>
</Tabs>
