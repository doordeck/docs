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
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getSingleLock("LOCK_ID");
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
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getLockAuditTrail("LOCK_ID");
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
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getAuditForUser("USER_ID");
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
// Returns a Array<UserLockResponse> asynchronously
let response = await sdk.lockOperations().getUsersForLock(lockId: LOCK_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<UserLockResponse>>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUsersForLock(LOCK_ID);
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
var response = sdk.lockOperations().getLocksForUserAsync(LOCK_ID);
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
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getLocksForUser("LOCK_ID");
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
await com.doordeck.multiplatform.sdk.api.lockOperations().updateLockName(
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
await com.doordeck.multiplatform.sdk.api.lockOperations().updateLockFavourite(
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
await com.doordeck.multiplatform.sdk.api.lockOperations().updateLockSettingDefaultName(
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
await com.doordeck.multiplatform.sdk.api.lockOperations().setLockSettingPermittedAddresses(
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
await com.doordeck.multiplatform.sdk.api.lockOperations().updateLockSettingHidden(
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
val timeRequirement = LockOperations.TimeRequirement.Builder()
  .setStart(START)
  .setEnd(END)
  .setTimezone(TIMEZONE_ID)
  .setDays(EnumSet.of(DayOfWeek.MONDAY))
  .build()
// Returns Unit
sdk.lockOperations().setLockSettingTimeRestrictions(
  lockId = LOCK_ID, 
  times = listOf(timeRequirements)
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var timeRequirement = new LockOperations.TimeRequirement.Builder()
    .setStart(START)
    .setEnd(END)
    .setTimezone(TIMEZONE_ID)
    .setDays(EnumSet.of(DayOfWeek.MONDAY))
    .build();
// Returns a CompletableFuture<Void>
sdk.lockOperations().setLockSettingTimeRestrictionsAsync(LOCK_ID, List.of(timeRequirement));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let timeRequirement = LockOperations.TimeRequirement.Builder()
    .setStart(START)
    .setEnd(END)
    .setTimezone(TIMEZONE_ID)
    .setDays([DayOfWeek.MONDAY])
    .build()
// Returns Void asynchronously
await sdk.lockOperations().setLockSettingTimeRestrictions(
  lockId: LOCK_ID, 
  times: [timeRequirement]
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const timeRequirement = new com.doordeck.multiplatform.sdk.model.data.LockOperations.TimeRequirement.Builder()
  .setStart("START_HH_MM")
  .setEnd("END_HH_MM")
  .setTimezone("TIMEZONE")
  .setDays(new Set("MONDAY"))
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.lockOperations().setLockSettingTimeRestrictions(
  "LOCK_ID",
  [timeRequirement]
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var timeRequirement = new TimeRequirement(
  start: START, 
  end: END, 
  timezone: TIMEZONE, 
  days: [DayOfWeek.MONDAY]
);
// Returns Task<object>
await sdk.GetLockOperations().SetLockSettingTimeRestrictions(
  lockId: LOCK_ID, 
  times: [timeRequirement]
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
timeRequirement = doordeck_headless_sdk.TimeRequirement(
  "START_HH_MM", 
  "END_HH_MM", 
  "TIMEZONE", 
  ["MONDAY"]
)
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.set_lock_setting_time_restrictions(
  "LOCK_ID", 
  [timeRequirement]
)
```

</TabItem>
</Tabs>

## Update lock setting location restrictions

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val locationRequirement = LockOperations.LocationRequirement.Builder()
  .setLatitude(LATITUDE)
  .setLongitude(LONGITUDE)
  .setEnabled(true)
  .build()
// Returns Unit
sdk.lockOperations().updateLockSettingLocationRestrictions(
  lockId = LOCK_ID,
  location = locationRequirement
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var locationRequirement = new LockOperations.LocationRequirement.Builder()
  .setLatitude(LATITUDE)
  .setLongitude(LONGITUDE)
  .setEnabled(true)
  .build();
// Returns a CompletableFuture<Void>
sdk.lockOperations().updateLockSettingLocationRestrictionsAsync(LOCK_ID, locationRequirement);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let locationRequirement = LockOperations.LocationRequirement.Builder()
  .setLatitude(latitude: LATITUDE)
  .setLongitude(longitude: LONGITUDE)
  .setEnabled(enabled: true)
  .build()
// Returns Void asynchronously
await sdk.lockOperations().updateLockSettingLocationRestrictions(
  lockId: LOCK_ID,
  location: locationRequirement
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const locationRequirement = new com.doordeck.multiplatform.sdk.model.data.LockOperations.LocationRequirement.Builder()
  .setLatitude(LATITUDE)
  .setLongitude(LONGITUDE)
  .setEnabled(ENABLED)
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.lockOperations().updateLockSettingLocationRestrictions(
  "LOCK_ID", 
  locationRequirement
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var locationRequirement = new LocationRequirement(
  latitude: LATITUDE, 
  longitude: LONGITUDE, 
  enabled: true
);
// Returns a Task<object>
await sdk.GetLockOperations().UpdateLockSettingLocationRestrictions(
  lockId: LOCK_ID, 
  location: locationRequirement
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
locationRequirement = doordeck_headless_sdk.LocationRequirement(
  LATITUDE, 
  LONGITUDE, 
  True
)
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.update_lock_setting_location_restrictions(
  "LOCK_ID", 
  locationRequirement
)
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
val response = sdk.lockOperations().getUserPublicKey(
  userEmail = "USER_EMAIL", 
  visitor = false
)
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
// Returns a UserPublicKeyResponse asynchronously
let response = await sdk.lockOperations().getUserPublicKey(
  userEmail: "USER_EMAIL", 
  visitor: false
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<UserPublicKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKey(
  "USER_EMAIL", 
  false
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<UserPublicKeyResponse>
var response = await sdk.GetLockOperations().GetUserPublicKey(
  userEmail: "USER_EMAIL", 
  visitor: false
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.lockOperations.get_user_public_key(
  "USER_EMAIL", 
  False
)
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
// Returns a UserPublicKeyResponse asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByEmail(email: "USER_EMAIL")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<UserPublicKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByEmail("USER_EMAIL");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Retrurns a Task<UserPublicKeyResponse>
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
// Returns a UserPublicKeyResponse asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByTelephone(telephone: "USER_TELEPHONE")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<UserPublicKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByTelephone("USER_TELEPHONE");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<UserPublicKeyResponse>
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
// Returns a UserPublicKeyResponse asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByLocalKey(localKey: "USER_LOCAL_KEY")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<UserPublicKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByLocalKey("USER_LOCAL_KEY");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<UserPublicKeyResponse>
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
// Returns a UserPublicKeyResponse asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByForeignKey(foreignKey: "USER_FOREIGN_KEY")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<UserPublicKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByForeignKey("USER_FOREIGN_KEY");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<UserPublicKeyResponse>
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
// Returns a UserPublicKeyResponse asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByIdentity(identity: "USER_IDENTITY")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<UserPublicKeyResponse>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByIdentity("USER_IDENTITY");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<UserPublicKeyResponse>
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
var response = sdk.lockOperations().getUserPublicKeyByEmailsAsync(List.of("USER_EMAIL", "USER_EMAIL"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<BatchUserPublicKeyResponse> asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByEmails(emails: ["USER_EMAIL", "USER_EMAIL"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<BatchUserPublicKeyResponse>>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByEmails(["USER_EMAIL", "USER_EMAIL"]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<BatchUserPublicKeyResponse>>
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
var response = sdk.lockOperations().getUserPublicKeyByTelephonesAsync(List.of("USER_TELEPHONE", "USER_TELEPHONE"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<BatchUserPublicKeyResponse> asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByTelephones(telephones: ["USER_TELEPHONE", "USER_TELEPHONE"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<BatchUserPublicKeyResponse>>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByTelephones(["USER_TELEPHONE", "USER_TELEPHONE"]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Tasl<List<BatchUserPublicKeyResponse>>
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
var response = sdk.lockOperations().getUserPublicKeyByLocalKeysAsync(List.of("USER_LOCAL_KEY"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<BatchUserPublicKeyResponse> asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByLocalKeys(localKeys: ["USER_LOCAL_KEY", "USER_LOCAL_KEY"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<List<BatchUserPublicKeyResponse>>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByLocalKeys(["USER_LOCAL_KEY", "USER_LOCAL_KEY"]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<BatchUserPublicKeyResponse>>
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
var response = sdk.lockOperations().getUserPublicKeyByForeignKeysAsync(List.of("USER_FOREIGN_KEY", "USER_FOREIGN_KEY"));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<BatchUserPublicKeyResponse> asynchronously
let response = await sdk.lockOperations().getUserPublicKeyByForeignKeys(foreignKeys: ["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<BatchUserPublicKeyResponse>>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByForeignKey(["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"]);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<BatchUserPublicKeyResponse>>
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
This function can also be used by passing all the necessary parameters to it, such as the **user ID**, 
**certificate chain**, and **private key**. In the next example, we are using these values from 
the [context](context-manager.md#set-operation-context) and hence we do not need to pass them.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val unlockOperation = LockOperations.UnlockOperation.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .build()
// Returns Unit
sdk.lockOperations().unlock(unlockOperation)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var unlockOperation = new LockOperations.UnlockOperation.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .build();
// Returns CompletableFuture<Void>
sdk.lockOperations().unlockAsync(unlockOperation);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let unlockOperation = LockOperations.UnlockOperation.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(lockId: LOCK_ID)
    .build())
  .build()
// Returns Void asynchronously
await sdk.lockOperations().unlock(unlockOperation: unlockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const LockOperations = com.doordeck.multiplatform.sdk.model.data.LockOperations;
const unlockOperation = new LockOperations.UnlockOperation.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId("LOCK_ID")
    .build())
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.lockOperations().unlock(unlockOperation);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetLockOperations().Unlock(new UnlockOperation(new BaseOperation(LOCK_ID)));
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.unlock(
  doordeck_headless_sdk.UnlockOperation(
    doordeck_headless_sdk.BaseOperation("LOCK_ID")
  )
)
```

</TabItem>
</Tabs>

## Share lock

:::info
This function can also be used by passing all the necessary parameters to it, such as the **user ID**,
**certificate chain**, and **private key**. In the next example, we are using these values from
the [context](context-manager.md#set-operation-context) and hence we do not need to pass them.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val shareLockOperation = LockOperations.ShareLockOperation.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setShareLock(ShareLock.Builder()
    .setTargetUserId(TARGET_USER_ID)
    .setTargetUserRole(TARGET_USER_ROLE)
    .setTargetUserPublicKey(TARGET_PUBLIC_KEY)
    .build())
  .build()
// Returns Unit
sdk.lockOperations().shareLock(shareLockOperation)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var shareLockOperation = new LockOperations.ShareLockOperation.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setShareLock(new LockOperations.ShareLock.Builder()
    .setTargetUserId(TARGET_USER_ID)
    .setTargetUserRole(TARGET_USER_ROLE)
    .setTargetUserPublicKey(TARGET_PUBLIC_KEY)
    .build())
  .build();
// Returns a CompletableFuture<Void>
sdk.lockOperations().shareLockAsync(shareLockOperation);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let shareLockOperation = LockOperations.ShareLockOperation.Builder()
  .setBaseOperation(baseOperation: LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setShareLock(shareLock: ShareLock.Builder()
    .setTargetUserId(TARGET_USER_ID)
    .setTargetUserRole(TARGET_USER_ROLE)
    .setTargetUserPublicKey(TARGET_PUBLIC_KEY)
    .build())
  .build()
// Returns Void asynchronously  
await sdk.lockOperations().shareLock(shareLockOperation: shareLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const LockOperations = com.doordeck.multiplatform.sdk.model.data.LockOperations;
const shareLockOperation = new LockOperations.ShareLockOperation.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId("LOCK_ID")
    .build())
  .setShareLock(new LockOperations.ShareLock.Builder()
    .setTargetUserId("TARGET_USER_ID")
    .setTargetUserRole("TARGET_USER_ROLE")
    .setTargetUserPublicKey(TARGET_PUBLIC_KEY)
    .build())
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.lockOperations().shareLock(shareLockOperation);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns Task<object>
await sdk.GetLockOperations().ShareLock(
  new ShareLockOperation(
    baseOperation: new BaseOperation(LOCK_ID), 
    shareLock: new ShareLock(
      targetUserId: TARGET_USER_ID, 
      targetUserRole: TARGET_USER_ROLE, 
      targetUserPublicKey: TARGET_PUBLIC_KEY
    )
  )
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.share_lock(
  doordeck_headless_sdk.ShareLockOperation(
    doordeck_headless_sdk.BaseOperation("LOCK_ID"),
    doordeck_headless_sdk.ShareLock(
      "TARGET_USER_ID", 
      "TARGET_USER_ROLE", 
      "BASE64_TARGET_PUBLIC_KEY"
    )
  )
)
```

</TabItem>
</Tabs>

## Batch share lock

:::info
* This functionality requires the device to support the batch sharing feature. The function will retrieve the device's 
capabilities, store them in a cache, and perform the batch operation if supported. Otherwise, 
it will default to the standard device sharing process.
* This function can also be used by passing all the necessary parameters to it, such as the **user ID**, 
**certificate chain**, and **private key**. In the next example, we are using these values from
the [context](context-manager.md#set-operation-context) and hence we do not need to pass them.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val batchShareLockOperation = LockOperations.BatchShareLockOperation.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUsers(listOf(ShareLock.Builder()
    .setTargetUserId(TARGET_USER_ID)
    .setTargetUserRole(TARGET_USER_ROLE)
    .setTargetUserPublicKey(TARGET_PUBLIC_KEY)
    .build()))
  .build()
// Returns Unit
sdk.lockOperations().batchShareLock(batchShareLockOperation)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var batchShareLockOperation = new LockOperations.BatchShareLockOperation.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUsers(List.of(new LockOperations.ShareLock.Builder()
    .setTargetUserId(TARGET_USER_ID)
    .setTargetUserRole(TARGET_USER_ROLE)
    .setTargetUserPublicKey(TARGET_PUBLIC_KEY)
    .build()))
  .build();
// Returns a CompletableFuture<Void>
sdk.lockOperations().batchShareLockAsync(batchShareLockOperation);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let batchShareLockOperation = LockOperations.BatchShareLockOperation.Builder()
  .setBaseOperation(baseOperation: LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUsers(users: [ShareLock.Builder()
    .setTargetUserId(TARGET_USER_ID)
    .setTargetUserRole(TARGET_USER_ROLE)
    .setTargetUserPublicKey(TARGET_PUBLIC_KEY)
    .build()])
  .build()
// Returns Void asynchronously  
await sdk.lockOperations().batchShareLock(batchShareLockOperation: batchShareLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const LockOperations = com.doordeck.multiplatform.sdk.model.data.LockOperations;
const batchShareLockOperation = new LockOperations.BatchShareLockOperation.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId("LOCK_ID")
    .build())
  .setUsers([new LockOperations.ShareLock.Builder()
    .setTargetUserId("TARGET_USER_ID")
    .setTargetUserRole("TARGET_USER_ROLE")
    .setTargetUserPublicKey(TARGET_PUBLIC_KEY)
    .build()])
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.lockOperations().batchShareLock(batchShareLockOperation);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns Task<object>
await sdk.GetLockOperations().BatchShareLock(
    new BatchShareLockOperation(
        baseOperation: new BaseOperation(LOCK_ID), 
        users: [new ShareLock(
          targetUserId: TARGET_USER_ID, 
          targetUserRole: TARGET_USER_ROLE, 
          targetUserPublicKey: TARGET_PUBLIC_KEY
        )]
    )
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.batch_share_lock(
  doordeck_headless_sdk.BatchShareLockOperation(
    doordeck_headless_sdk.BaseOperation("LOCK_ID"),
    [doordeck_headless_sdk.ShareLock(
      "TARGET_USER_ID",
      "TARGET_USER_ROLE",
      "BASE64_TARGET_PUBLIC_KEY"
    )]
  )
)
```

</TabItem>
</Tabs>

## Revoke access to lock

:::info
This function can also be used by passing all the necessary parameters to it, such as the **user ID**,
**certificate chain**, and **private key**. In the next example, we are using these values from
the [context](context-manager.md#set-operation-context) and hence we do not need to pass them.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val revokeAccessToLockOperation = LockOperations.RevokeAccessToLockOperation.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUsers(listOf(USER_ID))
  .build()
// Returns Unit
sdk.lockOperations().revokeAccessToLock(revokeAccessToLockOperation)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var revokeAccessToLockOperation = new LockOperations.RevokeAccessToLockOperation.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUsers(List.of(USER_ID))
  .build();
// Returns Unit
sdk.lockOperations().revokeAccessToLockAsync(revokeAccessToLockOperation);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let revokeAccessToLockOperation = LockOperations.RevokeAccessToLockOperation.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUsers([USER_ID])
  .build()
// Returns Void asynchronously
await sdk.lockOperations().revokeAccessToLock(revokeAccessToLockOperation: revokeAccessToLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const LockOperations = com.doordeck.multiplatform.sdk.model.data.LockOperations;
const revokeAccessToLockOperation = new LockOperations.RevokeAccessToLockOperation.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId("LOCK_ID")
    .build())
  .setUsers(["USER_ID"])
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.lockOperations().revokeAccessToLock(revokeAccessToLockOperation);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns Task<object>
await sdk.GetLockOperations().RevokeAccessToLock(
  new RevokeAccessToLockOperation(
    baseOperation: new BaseOperation(LOCK_ID), 
    users: [USER_ID]
  )
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.revoke_access_to_lock(
  doordeck_headless_sdk.RevokeAccessToLockOperation(
    doordeck_headless_sdk.BaseOperation("LOCK_ID"),
    ["USER_ID"]
  )
)
```

</TabItem>
</Tabs>

## Update secure setting unlock duration

:::info
This function can also be used by passing all the necessary parameters to it, such as the **user ID**,
**certificate chain**, and **private key**. In the next example, we are using these values from
the [context](context-manager.md#set-operation-context) and hence we do not need to pass them.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val updateSecureSettingUnlockDuration = LockOperations.UpdateSecureSettingUnlockDuration.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUnlockDuration(UNLOCK_DURATION)
  .build()
// Returns Unit
sdk.lockOperations().updateSecureSettingUnlockDuration(updateSecureSettingUnlockDuration)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var updateSecureSettingUnlockDuration = new LockOperations.UpdateSecureSettingUnlockDuration.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUnlockDuration(UNLOCK_DURATION)
  .build();
// Returns Unit
sdk.lockOperations().updateSecureSettingUnlockDurationAsync(updateSecureSettingUnlockDuration);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let updateSecureSettingUnlockDuration = LockOperations.UpdateSecureSettingUnlockDuration.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(lockId: LOCK_ID)
    .build())
  .setUnlockDuration(unlockDuration: UNLOCK_DURATION)
  .build();
// Returns Void asynchronously
await sdk.lockOperations().updateSecureSettingUnlockDuration(updateSecureSettingUnlockDuration: updateSecureSettingUnlockDuration)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const LockOperations = com.doordeck.multiplatform.sdk.model.data.LockOperations;
const updateSecureSettingUnlockDuration = new LockOperations.UpdateSecureSettingUnlockDuration.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId("LOCK_ID")
    .build())
  .setUnlockDuration(UNLOCK_DURATION)
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.lockOperations().updateSecureSettingUnlockDuration(updateSecureSettingUnlockDuration);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns Task<object>
await sdk.GetLockOperations().UpdateSecureSettingUnlockDuration(
  new UpdateSecureSettingUnlockDuration(
    baseOperation: new BaseOperation(LOCK_ID), 
    unlockDuration: UNLOCK_DURATION
  )
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.update_secure_setting_unlock_duration(
  doordeck_headless_sdk.UpdateSecureSettingUnlockDuration(
    doordeck_headless_sdk.BaseOperation("LOCK_ID"),
    UNLOCK_DURATION
  )
)
```

</TabItem>
</Tabs>

## Update secure setting unlock between

:::info
This function can also be used by passing all the necessary parameters to it, such as the **user ID**,
**certificate chain**, and **private key**. In the next example, we are using these values from
the [context](context-manager.md#set-operation-context) and hence we do not need to pass them.
:::

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
val updateSecureSettingUnlockBetween = LockOperations.UpdateSecureSettingUnlockBetween.Builder()
  .setBaseOperation(LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUnlockBetween(LockOperations.UnlockBetween.Builder()
    .setStart(START)
    .setEnd(END)
    .setTimezone(TIMEZONE)
    .setDays(listOf(DayOfWeek.MONDAY))
    .build())
  .build()
// Returns Unit
sdk.lockOperations().updateSecureSettingUnlockBetween(updateSecureSettingUnlockBetween)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
var updateSecureSettingUnlockBetween = new LockOperations.UpdateSecureSettingUnlockBetween.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUnlockBetween(new LockOperations.UnlockBetween.Builder()
    .setStart(START)
    .setEnd(END)
    .setTimezone(TIMEZONE)
    .setDays(List.of(DayOfWeek.MONDAY))
    .build())
  .build();
// Returns Unit
updateSecureSettingUnlockBetweenAsync(updateSecureSettingUnlockBetween);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let updateSecureSettingUnlockBetween = LockOperations.UpdateSecureSettingUnlockBetween.Builder()
  .setBaseOperation(baseOperation: LockOperations.BaseOperation.Builder()
    .setLockId(LOCK_ID)
    .build())
  .setUnlockBetween(unlockBetween: LockOperations.UnlockBetween.Builder()
    .setStart(start: START)
    .setEnd(end: END)
    .setTimezone(timezone: TIMEZONE)
    .setDays(days: DAYS_LIST)
    .build())
  .build()
// Returns Void asynchronously
sdk.lockOperations().updateSecureSettingUnlockBetween(updateSecureSettingUnlockBetween);
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const LockOperations = com.doordeck.multiplatform.sdk.model.data.LockOperations;
const updateSecureSettingUnlockBetween = new LockOperations.UpdateSecureSettingUnlockBetween.Builder()
  .setBaseOperation(new LockOperations.BaseOperation.Builder()
    .setLockId("LOCK_ID")
    .build())
  .setUnlockBetween(new LockOperations.UnlockBetween.Builder()
    .setStart("START_HH_MM")
    .setEnd("END_HH_MM")
    .setTimezone("TIMEZONE")
    .setDays(new Set("MONDAY"))
    .build())
  .build();
// Returns a Promise<any>
await com.doordeck.multiplatform.sdk.api.lockOperations().updateSecureSettingUnlockBetween(updateSecureSettingUnlockBetween);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var unlockBetween = new UpdateSecureSettingUnlockBetween(
    baseOperation: new BaseOperation(LOCK_ID),
    unlockBetween: new UnlockBetween(
        start: START,
        end: END,
        timezone: TIMEZONE,
        days: [DayOfWeek.FRIDAY]
    )
);
// Returns Task<object>
await sdk.GetLockOperations().UpdateSecureSettingUnlockBetween(unlockBetween);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.lockOperations.update_secure_setting_unlock_between(
  doordeck_headless_sdk.UpdateSecureSettingUnlockBetween(
    doordeck_headless_sdk.BaseOperation("LOCK_ID"),
    doordeck_headless_sdk.UnlockBetween(
      "START_HH_MM", 
      "END_HH_MM", 
      "TIMEZONE",
      ["MONDAY"]
    )
  )
)
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
// Returns a Array<LockResponse> asynchronously
let response = await sdk.lockOperations().getPinnedLocks()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<LockResponse>>
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getPinnedLocks();
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
const response = await com.doordeck.multiplatform.sdk.api.lockOperations().getShareableLocks();
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
