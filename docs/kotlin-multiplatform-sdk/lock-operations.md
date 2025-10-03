# Lock operations resource

## Get single lock

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a LockResponse
val response = sdk.lockOperations().getSingleLock(LOCK_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<LockResponse>
var response = sdk.lockOperations().getSingleLockAsync(LOCK_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a LockResponse asynchronously
let response = await sdk.lockOperations().getSingleLock(lockId: LOCK_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<LockResponse>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getSingleLock("LOCK_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<LockResponse>
var response = await sdk.GetLockOperations().GetSingleLock(LOCK_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_single_lock("LOCK_ID")
```

</TabItem>
</Tabs>

## Get lock audit trail

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<LockAuditTrailResponse>
val response = sdk.lockOperations().getLockAuditTrail(LOCK_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<LockAuditTrailResponse>>
var response = sdk.lockOperations().getLockAuditTrailAsync(LOCK_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<LockAuditTrailResponse> asynchronously
let response = await sdk.lockOperations().getLockAuditTrail(
  lockId: LOCK_ID, 
  start: START_EPOCH, 
  end: END_EPOCH
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<LockAuditTrailResponse>>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getLockAuditTrail("LOCK_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<LockAuditTrailResponse>>
var response = await sdk.GetLockOperations().GetLockAuditTrail(LOCK_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_lock_audit_trail("LOCK_ID")
```

</TabItem>
</Tabs>

## Get audit for user

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<AuditResponse>
val response = sdk.lockOperations().getAuditForUser(USER_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<AuditResponse>>
var response = sdk.lockOperations().getAuditForUserAsync(USER_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<AuditResponse> asynchronously
let response = await sdk.lockOperations().getAuditForUser(
  userId: "USER_ID", 
  start: START_EPOCH, 
  end: END_EPOCH
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<AuditResponse>>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getAuditForUser("USER_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<AuditResponse>>
var response = await sdk.GetLockOperations().GetAuditForUser(USER_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_audit_for_user("USER_ID")
```

</TabItem>
</Tabs>

## Get users for lock

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<UserLockResponse>
val response = sdk.lockOperations().getUsersForLock(LOCK_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<UserLockResponse>>
var response = sdk.lockOperations().getUsersForLockAsync(LOCK_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Array<UserLockResponse> asynchronously
let response = await sdk.lockOperations().getUsersForLock(lockId: LOCK_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<UserLockResponse>>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUsersForLock(LOCK_ID);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<UserLockResponse>>
var response = await sdk.GetLockOperations().GetUsersForLock(LOCK_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_users_for_lock("LOCK_ID")
```

</TabItem>
</Tabs>

## Get locks for user

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a LockUserResponse
val response = sdk.lockOperations().getLocksForUser(LOCK_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<LockUserResponse>
var response = sdk.lockOperations().getLocksForUser(LOCK_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a LockUserResponse asynchronously
let response = await sdk.lockOperations().getLocksForUser(lockId: LOCK_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<LockUserResponse>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getLocksForUser("LOCK_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<LockUserResponse>
var response = await sdk.GetLockOperations().GetLocksForUser(LOCK_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_locks_for_user("LOCK_ID")
```

</TabItem>
</Tabs>

## Update lock name

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.lockOperations().updateLockName(
  lockId = LOCK_ID, 
  name = "LOCK_NAME"
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.lockOperations().updateLockNameAsync(LOCK_ID, "LOCK_NAME");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.lockOperations().updateLockName(
  lockId: LOCK_ID, 
  name: "LOCK_NAME"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockName(
  "LOCK_ID", 
  "LOCK_NAME"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetLockOperations().UpdateLockName(
  lockId: LOCK_ID, 
  name: "LOCK_NAME"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.update_lock_name(
  "LOCK_ID", 
  "LOCK_NAME"
)
```

</TabItem>
</Tabs>

## Update lock favourite

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.lockOperations().updateLockFavourite(
  lockId = LOCK_ID,
  favourite = true
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.lockOperations().updateLockFavouriteAsync(LOCK_ID, true);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.lockOperations().updateLockFavourite(
  lockId: LOCK_ID, 
  favourite: true
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockFavourite(
  "LOCK_ID", 
  true
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetLockOperations().UpdateLockFavourite(
  lockId: LOCK_ID, 
  favourite: true
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.update_lock_favourite(
  "LOCK_ID", 
  True
)
```

</TabItem>
</Tabs>

## Update lock setting default name

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.lockOperations().updateLockSettingDefaultName(
  lockId = LOCK_ID, 
  name = LOCK_NAME
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.lockOperations().updateLockSettingDefaultNameAsync(LOCK_ID, LOCK_NAME);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.lockOperations().updateLockSettingDefaultName(
  lockId: LOCK_ID, 
  name: "LOCK_NAME"
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockSettingDefaultName(
  "LOCK_ID", 
  "LOCK_NAME"
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetLockOperations().UpdateLockSettingDefaultName(
  lockId: LOCK_ID, 
  name: LOCK_NAME
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.update_lock_setting_default_name(
  "LOCK_ID", 
  "LOCK_NAME"
)
```

</TabItem>
</Tabs>

## Set lock setting permitted addresses

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.lockOperations().setLockSettingPermittedAddresses(
  lockId = LOCK_ID,
  permittedAddresses = listOf(PERMITTED_ADDRESS)
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.lockOperations().setLockSettingPermittedAddressesAsync(LOCK_ID, List.of(PERMITTED_ADDRESS));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.lockOperations().setLockSettingPermittedAddresses(
  lockId: LOCK_ID, 
  permittedAddresses: [PERMITTED_ADDRESS]
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().setLockSettingPermittedAddresses(
  "LOCK_ID", 
  ["PERMITTED_ADDRESS"]
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetLockOperations().SetLockSettingPermittedAddresses(
  lockId: LOCK_ID, 
  permittedAddresses: [PERMITTED_ADDRESS]
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.set_lock_setting_permitted_addresses(
  "LOCK_ID", 
  ["PERMITTED_ADDRESS"]
)
```

</TabItem>
</Tabs>

## Update lock setting hidden

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.lockOperations().updateLockSettingHidden(
  lockId = LOCK_ID,
  hidden = true
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.lockOperations().updateLockSettingHiddenAsync(LOCK_ID, true);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.lockOperations().updateLockSettingHidden(
  lockId: LOCK_ID, 
  hidden: true
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockSettingHidden(
  "LOCK_ID", 
  true
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetLockOperations().UpdateLockSettingHidden(
  lockId: LOCK_ID, 
  hidden: true
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.update_lock_setting_hidden(
  "LOCK_ID", 
  True
)
```

</TabItem>
</Tabs>

## Set lock setting time restrictions

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
val timeRequirement = LockOperations.TimeRequirement.Builder()
  .setStart(START)
  .setEnd(END)
  .setTimezone(TIMEZONE_ID)
  .setDays(EnumSet.of(DayOfWeek.MONDAY))
  .build()
sdk.lockOperations().setLockSettingTimeRestrictions(
  lockId = LOCK_ID, 
  times = listOf(timeRequirements)
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
var timeRequirement = new LockOperations.TimeRequirement.Builder()
    .setStart(START)
    .setEnd(END)
    .setTimezone(TIMEZONE_ID)
    .setDays(EnumSet.of(DayOfWeek.MONDAY))
    .build();
sdk.lockOperations().setLockSettingTimeRestrictionsAsync(LOCK_ID, List.of(timeRequirement));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let timeRequirement = LockOperations.TimeRequirement.Builder()
    .setStart(START)
    .setEnd(END)
    .setTimezone(TIMEZONE_ID)
    .setDays([DayOfWeek.MONDAY])
    .build();
await sdk.lockOperations().setLockSettingTimeRestrictions(
  lockId: LOCK_ID, 
  times: [locationRequirement]
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().setLockSettingTimeRestrictions("LOCK_ID",
    [new lockOperations.TimeRequirement("START_HH_MM", "END_HH_MM", "TIMEZONE", ["MONDAY"])]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
List<TimeRequirement> timeRequirements = [new TimeRequirement("START_HH_MM", "END_HH_MM", "TIMEZONE", ["MONDAY"])];
await sdk.GetLockOperations().SetLockSettingTimeRestrictions("LOCK_ID", timeRequirements);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
timeRequirements = [doordeck_headless_sdk.TimeRequirement("START_HH_MM", "END_HH_MM", "TIMEZONE", ["MONDAY"])]
await sdk.lockOperations.set_lock_setting_time_restrictions("LOCK_ID", timeRequirements)
```

</TabItem>
</Tabs>

## Update lock setting location restrictions

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
val locationRequirement = LockOperations.LocationRequirement(LATITUDE, LONGITUDE, true, 100)
sdk.lockOperations().updateLockSettingLocationRestrictions("LOCK_ID", locationRequirement)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
var locationRequirement = LockOperations.LocationRequirement(LATITUDE, LONGITUDE, true, 100);
sdk.lockOperations().updateLockSettingLocationRestrictionsAsync("LOCK_ID", locationRequirement);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let locationRequirement = LockOperations.LocationRequirement(latitude: LATITUDE, longitude: LONGITUDE, enabled: true, radius: 100, accuracy: 100)
await sdk.lockOperations().updateLockSettingLocationRestrictions(lockId: "LOCK_ID", location: locationRequirement)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const locationRequirement = new lockOperations.LocationRequirement(LATITUDE, LONGITUDE, ENABLED, RADIUS, ACCURACY);
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockSettingLocationRestrictions("LOCK_ID", locationRequirement);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var locationRequirement = new LocationRequirement(LATITUDE, LONGITUDE, true, 100);
await sdk.GetLockOperations().UpdateLockSettingLocationRestrictions("LOCK_ID", locationRequirement);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
locationRequirement = doordeck_headless_sdk.LocationRequirement(LATITUDE, LONGITUDE, True, 100)
await sdk.lockOperations.update_lock_setting_location_restrictions("LOCK_ID", locationRequirement)
```

</TabItem>
</Tabs>

## Get a Doordeck user's public key

:::warning
This function is only available to users with Doordeck issued auth tokens
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a UserPublicKeyResponse
val response = sdk.lockOperations().getUserPublicKey("USER_EMAIL", false)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<UserPublicKeyResponse>
var response = sdk.lockOperations().getUserPublicKeyAsync("USER_EMAIL", false);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKey(userEmail: "USER_EMAIL", visitor: false)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKey("USER_EMAIL", false);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKey("USER_EMAIL", false);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key("USER_EMAIL", False)
```

</TabItem>
</Tabs>

## Lookup user public key by email

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a UserPublicKeyResponse
val response = sdk.lockOperations().getUserPublicKeyByEmail("USER_EMAIL")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<UserPublicKeyResponse>
var response = sdk.lockOperations().getUserPublicKeyByEmailAsync("USER_EMAIL");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByEmail(email: "USER_EMAIL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByEmail("USER_EMAIL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByEmail("USER_EMAIL");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_email("USER_EMAIL")
```

</TabItem>
</Tabs>

## Lookup user public key by telephone

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a UserPublicKeyResponse
val response = sdk.lockOperations().getUserPublicKeyByTelephone("USER_TELEPHONE")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<UserPublicKeyResponse>
var response = sdk.lockOperations().getUserPublicKeyByTelephoneAsync("USER_TELEPHONE");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByTelephone(telephone: "USER_TELEPHONE")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByTelephone("USER_TELEPHONE");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByTelephone("USER_TELEPHONE");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_telephone("USER_TELEPHONE")
```

</TabItem>
</Tabs>

## Lookup user public key by local key

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a UserPublicKeyResponse
val response = sdk.lockOperations().getUserPublicKeyByLocalKey("USER_LOCAL_KEY")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<UserPublicKeyResponse>
var response = sdk.lockOperations().getUserPublicKeyByLocalKeyAsync("USER_LOCAL_KEY");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByLocalKey(localKey: "USER_LOCAL_KEY")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByLocalKey("USER_LOCAL_KEY");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByLocalKey("USER_LOCAL_KEY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_local_key("USER_LOCAL_KEY")
```

</TabItem>
</Tabs>

## Lookup user public key by foreign key

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a UserPublicKeyResponse
val response = sdk.lockOperations().getUserPublicKeyByForeignKey("USER_FOREIGN_KEY")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<UserPublicKeyResponse>
var response = sdk.lockOperations().getUserPublicKeyByForeignKeyAsync("USER_FOREIGN_KEY");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByForeignKey(foreignKey: "USER_FOREIGN_KEY")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByForeignKey("USER_FOREIGN_KEY");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByForeignKey("USER_FOREIGN_KEY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_foreign_key("USER_FOREIGN_KEY")
```

</TabItem>
</Tabs>

## Lookup user public key by identity

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a UserPublicKeyResponse
val response = sdk.lockOperations().getUserPublicKeyByIdentity("USER_IDENTITY")
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<UserPublicKeyResponse>
var response = sdk.lockOperations().getUserPublicKeyByIdentityAsync("USER_IDENTITY");
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByIdentity(identity: "USER_IDENTITY")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByIdentity("USER_IDENTITY");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByIdentity("USER_IDENTITY");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_identity("USER_IDENTITY")
```

</TabItem>
</Tabs>

## Batch lookup user public key by email

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<BatchUserPublicKeyResponse>
val response = sdk.lockOperations().getUserPublicKeyByEmails(listOf("USER_EMAIL", "USER_EMAIL"))
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<BatchUserPublicKeyResponse>>
var response = sdk.lockOperations().getUserPublicKeyByEmailsAsync(listOf("USER_EMAIL", "USER_EMAIL"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByEmails(emails: ["USER_EMAIL", "USER_EMAIL"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByEmails(["USER_EMAIL", "USER_EMAIL"]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByEmails(["USER_EMAIL", "USER_EMAIL"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_emails(["USER_EMAIL", "USER_EMAIL"])
```

</TabItem>
</Tabs>

## Batch lookup user public key by telephone

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<BatchUserPublicKeyResponse>
val response = sdk.lockOperations().getUserPublicKeyByTelephones(listOf("USER_TELEPHONE", "USER_TELEPHONE"))
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<BatchUserPublicKeyResponse>>
var response = sdk.lockOperations().getUserPublicKeyByTelephonesAsync(listOf("USER_TELEPHONE", "USER_TELEPHONE"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByTelephones(telephones: ["USER_TELEPHONE", "USER_TELEPHONE"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByTelephones(["USER_TELEPHONE", "USER_TELEPHONE"]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByTelephones(["USER_TELEPHONE", "USER_TELEPHONE"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_telephones(["USER_TELEPHONE", "USER_TELEPHONE"])
```

</TabItem>
</Tabs>

## Batch lookup user public key by local key

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<BatchUserPublicKeyResponse>
val response = sdk.lockOperations().getUserPublicKeyByLocalKeys(listOf("USER_LOCAL_KEY"))
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<BatchUserPublicKeyResponse>>
var response = sdk.lockOperations().getUserPublicKeyByLocalKeysAsync(listOf("USER_LOCAL_KEY"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByLocalKeys(localKeys: ["USER_LOCAL_KEY", "USER_LOCAL_KEY"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByLocalKeys(["USER_LOCAL_KEY", "USER_LOCAL_KEY"]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByLocalKeys(["USER_LOCAL_KEY", "USER_LOCAL_KEY"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_local_keys(["USER_LOCAL_KEY", "USER_LOCAL_KEY"])
```

</TabItem>
</Tabs>

## Batch lookup user public key by foreign key

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<BatchUserPublicKeyResponse>
val response = sdk.lockOperations().getUserPublicKeyByForeignKeys(listOf("USER_FOREIGN_KEY", "USER_FOREIGN_KEY"))
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<BatchUserPublicKeyResponse>>
var response = sdk.lockOperations().getUserPublicKeyByForeignKeysAsync(listOf("USER_FOREIGN_KEY", "USER_FOREIGN_KEY"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByForeignKeys(foreignKeys: ["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByForeignKey(["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByForeignKeys(["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key_by_foreign_keys(["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"])
```

</TabItem>
</Tabs>

## Unlock

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) 
values from the context. To use these values from the context, 
you should set those parameters to **null** in the **BaseOperation** object.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val unlockOperation = LockOperations.UnlockOperation(baseOperation)
// Returns Unit
sdk.lockOperations().unlock(unlockOperation)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val unlockOperation = LockOperations.UnlockOperation(baseOperation);
// Returns a CompletableFuture<Void>
sdk.lockOperations().unlockAsync(unlockOperation);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let unlockOperation = LockOperations.UnlockOperation(baseOperation: baseOperation, directAccessEndpoints: null)
await sdk.lockOperations().unlock(unlockOperation: shareLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const baseOperation = new lockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID", NOT_BEFORE, ISSUED_AT, EXPIRES_AT, "UUID");
const unlockOperation = new lockOperations.UnlockOperation(baseOperation, null);
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().unlock(unlockOperation);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var baseOperation = new BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY", "LOCK_ID");
var data = new UnlockOperation(baseOperation);
await sdk.GetLockOperations().Unlock(data);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
data = doordeck_headless_sdk.UnlockOperation(baseOperation)
await sdk.lockOperations.unlock(data)
```

</TabItem>
</Tabs>

## Share lock

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) 
values from the context. To use these values from the context, 
you should set those parameters to **null** in the **BaseOperation** object.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val shareLock = LockOperations.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, TARGET_PUBLIC_KEY)
val shareLockOperation = LockOperations.ShareLockOperation(baseOperation, shareLock)
// Returns Unit
sdk.lockOperations().shareLock(shareLockOperation)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val shareLock = LockOperations.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, TARGET_PUBLIC_KEY)
val shareLockOperation = LockOperations.ShareLockOperation(baseOperation, shareLock);
// Returns a CompletableFuture<Void>
sdk.lockOperations().shareLockAsync(shareLockOperation);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let shareLock = LockOperations.ShareLock(targetUserId: "TARGET_USER_ID", targetUserRole: TARGET_USER_ROLE, targetUserPublicKey: TARGET_PUBLIC_KEY, start: null, end: null)
let shareLockOperation = LockOperations.ShareLockOperation(baseOperation: baseOperation, shareLock: shareLock)
await sdk.lockOperations().shareLock(shareLockOperation: shareLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const baseOperation = new lockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID", NOT_BEFORE, ISSUED_AT, EXPIRES_AT, "UUID");
const userRole = doordeck.com.doordeck.multiplatform.sdk.model.common.UserRole;
const shareLock = new lockOperations.ShareLock("TARGET_USER_ID", userRole.USER, TARGET_PUBLIC_KEY, null, null);
const shareLockOperation = new lockOperations.ShareLockOperation(baseOperation, shareLock);
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().shareLock(shareLockOperation);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var baseOperation = new BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY", "LOCK_ID");
var shareLock = new ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, "BASE64_TARGET_PUBLIC_KEY");
var data = new ShareLockOperation(baseOperation, shareLock);
await sdk.GetLockOperations().ShareLock(data);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
shareLock = doordeck_headless_sdk.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, "BASE64_TARGET_PUBLIC_KEY")
data = doordeck_headless_sdk.ShareLockOperation(baseOperation, shareLock)
await sdk.lockOperations.share_lock(data)
```

</TabItem>
</Tabs>

## Batch share lock

:::info
* This functionality requires the device to support the batch sharing feature. The function will retrieve the device's 
capabilities, store them in a cache, and perform the batch operation if supported. Otherwise, 
it will default to the standard device sharing process.
* This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) 
values from the context. To use these values from the context, 
you should set those parameters to **null** in the **BaseOperation** object.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val users = listOf(LockOperations.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, TARGET_PUBLIC_KEY))
val shareLockOperation = LockOperations.BatchShareLockOperation(baseOperation, users)
// Returns Unit
sdk.lockOperations().batchShareLock(shareLockOperation)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val users = listOf(LockOperations.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, TARGET_PUBLIC_KEY))
val shareLockOperation = LockOperations.BatchShareLockOperation(baseOperation, users);
// Returns CompletableFuture<Void>
sdk.lockOperations().batchShareLockAsync(shareLockOperation);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let users = [LockOperations.ShareLock(targetUserId: "TARGET_USER_ID", targetUserRole: TARGET_USER_ROLE, targetUserPublicKey: TARGET_PUBLIC_KEY, start: null, end: null)]
let shareLockOperation = LockOperations.BatchShareLockOperation(baseOperation: baseOperation, users: users)
await sdk.lockOperations().batchShareLock(shareLockOperation: shareLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const baseOperation = new lockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID", NOT_BEFORE, ISSUED_AT, EXPIRES_AT, "UUID");
const userRole = doordeck.com.doordeck.multiplatform.sdk.model.common.UserRole;
const users = [new lockOperations.ShareLock("TARGET_USER_ID", userRole.USER, TARGET_PUBLIC_KEY, null, null)];
const shareLockOperation = new lockOperations.BatchShareLockOperation(baseOperation, users);
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().batchShareLock(shareLockOperation);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var baseOperation = new BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY", "LOCK_ID");
var users = [new ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, "BASE64_TARGET_PUBLIC_KEY")];
var data = new BatchShareLockOperation(baseOperation, users);
await sdk.GetLockOperations().BatchShareLock(data);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
users = [doordeck_headless_sdk.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, "BASE64_TARGET_PUBLIC_KEY")]
data = doordeck_headless_sdk.BatchShareLockOperation(baseOperation, users)
await sdk.lockOperations.batch_share_lock(data)
```

</TabItem>
</Tabs>

## Revoke access to lock

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) 
values from the context. To use these values from the context, 
you should set those parameters to **null** in the **BaseOperation** object.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val revokeAccessToLockOperation = LockOperations.RevokeAccessToLockOperation(baseOperation, listOf("USER_ID"))
// Returns Unit
sdk.lockOperations().revokeAccessToLock(revokeAccessToLockOperation)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val revokeAccessToLockOperation = LockOperations.RevokeAccessToLockOperation(baseOperation, listOf("USER_ID"));
// Returns a CompletableFuture<Void>
sdk.lockOperations().revokeAccessToLockAsync(revokeAccessToLockOperation);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let revokeAccessToLockOperation = LockOperations.RevokeAccessToLockOperation(baseOperation: baseOperation, users: ["USER_ID"])
await sdk.lockOperations().revokeAccessToLock(revokeAccessToLockOperation: revokeAccessToLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const baseOperation = new lockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID", NOT_BEFORE, ISSUED_AT, EXPIRES_AT, "UUID");
const revokeAccessToLockOperation = new lockOperations.RevokeAccessToLockOperation(baseOperation, ["USER_ID"]);
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().revokeAccessToLock(revokeAccessToLockOperation);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var baseOperation = new BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY", "LOCK_ID");
var data = new RevokeAccessToLockOperation(baseOperation, ["USER_ID"]);
await sdk.GetLockOperations().RevokeAccessToLock(data);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
data = doordeck_headless_sdk.RevokeAccessToLockOperation(baseOperation, ["USER_ID"])
await sdk.lockOperations.revoke_access_to_lock(data)
```

</TabItem>
</Tabs>

## Update secure setting unlock duration

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) 
values from the context. To use these values from the context, 
you should set those parameters to **null** in the **BaseOperation** object.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val updateSecureSettingUnlockDuration = LockOperations.UpdateSecureSettingUnlockDuration(baseOperation, UNLOCK_DURATION)
// Returns Unit
sdk.lockOperations().updateSecureSettingUnlockDuration(updateSecureSettingUnlockDuration)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val updateSecureSettingUnlockDuration = LockOperations.UpdateSecureSettingUnlockDuration(baseOperation, UNLOCK_DURATION)
// Returns a CompletableFuture<Void>
sdk.lockOperations().updateSecureSettingUnlockDurationAsync(updateSecureSettingUnlockDuration);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let updateSecureSettingUnlockDuration = LockOperations.UpdateSecureSettingUnlockDuration(baseOperation: baseOperation, unlockDuration: UNLOCK_DURATION)
await sdk.lockOperations().updateSecureSettingUnlockDuration(updateSecureSettingUnlockDuration: updateSecureSettingUnlockDuration)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const baseOperation = new lockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID", NOT_BEFORE, ISSUED_AT, EXPIRES_AT, "UUID");
const updateSecureSettingUnlockDuration = new lockOperations.UpdateSecureSettingUnlockDuration(baseOperation, UNLOCK_DURATION);
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateSecureSettingUnlockDuration(updateSecureSettingUnlockDuration);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var baseOperation = new BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY", "LOCK_ID");
var data = new UpdateSecureSettingUnlockDuration(baseOperation, UNLOCK_DURATION)
await sdk.GetLockOperations().UpdateSecureSettingUnlockDuration(data);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
data = doordeck_headless_sdk.UpdateSecureSettingUnlockDuration(baseOperation, UNLOCK_DURATION)
await sdk.lockOperations.update_secure_setting_unlock_duration(data)
```

</TabItem>
</Tabs>

## Update secure setting unlock between

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) 
values from the context. To use these values from the context, 
you should set those parameters to **null** in the **BaseOperation** object.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val unlockBetween = LockOperations.UnlockBetween("START_HH_MM", "END_HH_MM", "TIMEZONE", DAYS_LIST)
val updateSecureSettingUnlockBetween = LockOperations.UpdateSecureSettingUnlockBetween(baseOperation, unlockBetween)
// Returns Unit
sdk.lockOperations().updateSecureSettingUnlockBetween(updateSecureSettingUnlockBetween)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val unlockBetween = LockOperations.UnlockBetween("START_HH_MM", "END_HH_MM", "TIMEZONE", DAYS_LIST)
val updateSecureSettingUnlockBetween = LockOperations.UpdateSecureSettingUnlockBetween(baseOperation, unlockBetween);
// Returns a CompletableFuture<Void>
sdk.lockOperations().updateSecureSettingUnlockBetweenAsync(updateSecureSettingUnlockBetween);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let unlockBetween = LockOperations.UnlockBetween(start: "START_HH_MM", end: "END_HH_MM", timezone: "TIMEZONE", days: ["MONDAY"], exceptions: ["FRIDAY"])
let updateSecureSettingUnlockBetween = LockOperations.UpdateSecureSettingUnlockBetween(baseOperation: baseOperation, unlockBetween: unlockBetween)
await sdk.lockOperations().updateSecureSettingUnlockBetween(updateSecureSettingUnlockBetween: updateSecureSettingUnlockBetween)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const baseOperation = new lockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID", NOT_BEFORE, ISSUED_AT, EXPIRES_AT, "UUID");
const unlockBetween = new lockOperations.UnlockBetween("START_HH_MM", "END_HH_MM", "TIMEZONE", DAYS_LIST, EXCEPTIONS_LIST);
const updateSecureSettingUnlockBetween = new lockOperations.UpdateSecureSettingUnlockBetween(baseOperation, unlockBetween)
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateSecureSettingUnlockBetween(updateSecureSettingUnlockBetween);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var baseOperation = new BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY", "LOCK_ID");
var unlockBetween = new UnlockBetween("START_HH_MM", "END_HH_MM", "TIMEZONE", DAYS_LIST);
var data = new UpdateSecureSettingUnlockBetween(baseOperation, unlockBetween);
await sdk.GetLockOperations().UpdateSecureSettingUnlockBetween(data);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
unlockBetween = doordeck_headless_sdk.UnlockBetween("START_HH_MM", "END_HH_MM", "TIMEZONE", DAYS_LIST)
data = doordeck_headless_sdk.UpdateSecureSettingUnlockBetween(baseOperation, unlockBetween)
await sdk.lockOperations.update_secure_setting_unlock_between(data)
```

</TabItem>
</Tabs>

## Get pinned locks

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns List<LockResponse>
val response = sdk.lockOperations().getPinnedLocks()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<LockResponse>>
var response = sdk.lockOperations().getPinnedLocksAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Array<LockResponse> asynchronously
let response = await sdk.lockOperations().getPinnedLocks()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<LockResponse>>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getPinnedLocks();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<LockResponse>>
var response = await sdk.GetLockOperations().GetPinnedLocks();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_pinned_locks()
```

</TabItem>
</Tabs>

## Get shareable locks

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<ShareableLockResponse>
val response = sdk.lockOperations().getShareableLocks()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<ShareableLockResponse>>
var response = sdk.lockOperations().getShareableLocksAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<ShareableLockResponse> asynchronously
let response = await sdk.lockOperations().getShareableLocks()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<ShareableLockResponse>>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getShareableLocks();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<ShareableLockResponse>>
var response = await sdk.GetLockOperations().GetShareableLocks();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_shareable_locks()
```

</TabItem>
</Tabs>
