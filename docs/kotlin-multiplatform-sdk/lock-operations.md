# Lock operations resource

## Get single lock

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getSingleLock("LOCK_ID")
```

:::tip[In Java...]
Use the `getSingleLockAsync` function, which returns a `CompletableFuture<LockResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getSingleLock(lockId: "LOCK_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getSingleLock("LOCK_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetSingleLock("LOCK_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_single_lock("LOCK_ID")
```

</TabItem>
</Tabs>

## Get lock audit trail

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getLockAuditTrail("LOCK_ID", START_EPOCH, END_EPOCH)
```

:::tip[In Java...]
Use the `getLockAuditTrailAsync` function, which returns a `CompletableFuture<List<LockAuditTrailResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getLockAuditTrail(lockId: "LOCK_ID", start: START_EPOCH, end: END_EPOCH)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getLockAuditTrail("LOCK_ID", START_EPOCH, END_EPOCH);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetLockAuditTrail("LOCK_ID", START_EPOCH, END_EPOCH);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_lock_audit_trail("LOCK_ID", START_EPOCH, END_EPOCH)
```

</TabItem>
</Tabs>

## Get audit for user

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getAuditForUser("USER_ID", START_EPOCH, END_EPOCH)
```

:::tip[In Java...]
Use the `getAuditForUserAsync` function, which returns a `CompletableFuture<List<AuditResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getAuditForUser(userId: "USER_ID", start: START_EPOCH, end: END_EPOCH)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getAuditForUser("USER_ID", START_EPOCH, END_EPOCH);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetAuditForUser("USER_ID", START_EPOCH, END_EPOCH);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_audit_for_user("USER_ID", START_EPOCH, END_EPOCH)
```

</TabItem>
</Tabs>

## Get users for lock

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUsersForLock("LOCK_ID")
```

:::tip[In Java...]
Use the `getUsersForLockAsync` function, which returns a `CompletableFuture<List<UserLockResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUsersForLock(lockId: "LOCK_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUsersForLock("LOCK_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUsersForLock("LOCK_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_users_for_lock("LOCK_ID")
```

</TabItem>
</Tabs>

## Get locks for user

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getLocksForUser("LOCK_ID")
```

:::tip[In Java...]
Use the `getLocksForUserAsync` function, which returns a `CompletableFuture<LockUserResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getLocksForUser(lockId: "LOCK_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getLocksForUser("LOCK_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetLocksForUser("LOCK_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_locks_for_user("LOCK_ID")
```

</TabItem>
</Tabs>

## Update lock name

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.lockOperations().updateLockName("LOCK_ID", "LOCK_NAME")
```

:::tip[In Java...]
Use the `updateLockNameAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.lockOperations().updateLockName(lockId: "LOCK_ID", name: "LOCK_NAME")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockName("LOCK_ID", "LOCK_NAME");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetLockOperations().UpdateLockName("LOCK_ID", "LOCK_NAME");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.lockOperations.update_lock_name("LOCK_ID", "LOCK_NAME")
```

</TabItem>
</Tabs>

## Update lock favourite

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.lockOperations().updateLockFavourite("LOCK_ID", true)
```

:::tip[In Java...]
Use the `updateLockFavouriteAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.lockOperations().updateLockFavourite(lockId: "LOCK_ID", favourite: true)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockFavourite("LOCK_ID", true);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetLockOperations().UpdateLockFavourite("LOCK_ID", true);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.lockOperations.update_lock_favourite("LOCK_ID", True)
```

</TabItem>
</Tabs>

## Update lock color

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.lockOperations().updateLockColour("LOCK_ID", "COLOR")
```

:::tip[In Java...]
Use the `updateLockColourAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.lockOperations().updateLockColour(lockId: "LOCK_ID", color: "COLOR")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockColour("LOCK_ID", "COLOR");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetLockOperations().UpdateLockColour("LOCK_ID", "COLOR");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.lockOperations.update_lock_colour("LOCK_ID", "COLOR")
```

</TabItem>
</Tabs>

## Update lock setting default name

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.lockOperations().updateLockSettingDefaultName("LOCK_ID", "LOCK_NAME")
```

:::tip[In Java...]
Use the `updateLockSettingDefaultNameAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.lockOperations().updateLockSettingDefaultName(lockId: "LOCK_ID", name: "LOCK_NAME")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockSettingDefaultName("LOCK_ID", "LOCK_NAME");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetLockOperations().UpdateLockSettingDefaultName("LOCK_ID", "LOCK_NAME");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.lockOperations.update_lock_setting_default_name("LOCK_ID", "LOCK_NAME")
```

</TabItem>
</Tabs>

## Set lock setting permitted addresses

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.lockOperations().setLockSettingPermittedAddresses("LOCK_ID", listOf("PERMITTED_ADDRESS"))
```

:::tip[In Java...]
Use the `setLockSettingPermittedAddressesAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.lockOperations().setLockSettingPermittedAddresses(lockId: "LOCK_ID", permittedAddresses: ["PERMITTED_ADDRESS"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().setLockSettingPermittedAddresses("LOCK_ID", ktList.fromJsArray(["PERMITTED_ADDRESS"]));
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetLockOperations().SetLockSettingPermittedAddresses("LOCK_ID", ["PERMITTED_ADDRESS"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.lockOperations.set_lock_setting_permitted_addresses("LOCK_ID", ["PERMITTED_ADDRESS"])
```

</TabItem>
</Tabs>

## Update lock setting hidden

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.lockOperations().updateLockSettingHidden("LOCK_ID", true)
```

:::tip[In Java...]
Use the `updateLockSettingHiddenAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.lockOperations().updateLockSettingHidden(lockId: "LOCK_ID", hidden: true)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().updateLockSettingHidden("LOCK_ID", true);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetLockOperations().UpdateLockSettingHidden("LOCK_ID", true);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.lockOperations.update_lock_setting_hidden("LOCK_ID", True)
```

</TabItem>
</Tabs>

## Set lock setting time restrictions

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val timeRequirements = listOf(LockOperations.TimeRequirement("START_HH_MM", "END_HH_MM", "TIMEZONE", listOf("MONDAY")))
sdk.lockOperations().setLockSettingTimeRestrictions("LOCK_ID", timeRequirements)
```

:::tip[In Java...]
Use the `setLockSettingTimeRestrictionsAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let timeRequirements = [LockOperations.TimeRequirement(start: "START_HH_MM", end: "END_HH_MM", timezone: "TIMEZONE", days: ["MONDAY"])]
sdk.lockOperations().setLockSettingTimeRestrictions(lockId: "LOCK_ID", times: locationRequirement)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().setLockSettingTimeRestrictions("LOCK_ID",
    ktList.fromJsArray([new lockOperations.TimeRequirement("START_HH_MM", "END_HH_MM", "TIMEZONE", ktList.fromJsArray(["MONDAY"]))]));
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
timeRequirements = [doordeck_headless_sdk.TimeRequirement("START_HH_MM", "END_HH_MM", "TIMEZONE", ["MONDAY"])]
await sdk.lockOperations.set_lock_setting_time_restrictions("LOCK_ID", timeRequirements)
```

</TabItem>
</Tabs>

## Update lock setting location restrictions

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val locationRequirement = LockOperations.LocationRequirement(LATITUDE, LONGITUDE, true, 100)
sdk.lockOperations().updateLockSettingLocationRestrictions("LOCK_ID", locationRequirement)
```

:::tip[In Java...]
Use the `updateLockSettingLocationRestrictionsAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let locationRequirement = LockOperations.LocationRequirement(latitude: LATITUDE, longitude: LONGITUDE, enabled: true, radius: 100, accuracy: 100)
sdk.lockOperations().updateLockSettingLocationRestrictions(lockId: "LOCK_ID", location: locationRequirement)
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
locationRequirement = doordeck_headless_sdk.LocationRequirement(LATITUDE, LONGITUDE, True, 100)
await sdk.lockOperations.update_lock_setting_location_restrictions("LOCK_ID", locationRequirement)
```

</TabItem>
</Tabs>

## Get a Doordeck user's public key

:::warning
This function is only available to users with Doordeck issued auth tokens
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKey("USER_EMAIL", false)
```

:::tip[In Java...]
Use the `getUserPublicKeyAsync` function, which returns a `CompletableFuture<UserPublicKeyResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKey(userEmail: "USER_EMAIL", visitor: false)
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
response = await sdk.lockOperations.get_user_public_key("USER_EMAIL", False)
```

</TabItem>
</Tabs>

## Lookup user public key by email

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByEmail("USER_EMAIL")
```

:::tip[In Java...]
Use the `getUserPublicKeyByEmailAsync` function, which returns a `CompletableFuture<UserPublicKeyResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByEmail(email: "USER_EMAIL")
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
response = await sdk.lockOperations.get_user_public_key_by_email("USER_EMAIL")
```

</TabItem>
</Tabs>

## Lookup user public key by telephone

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByTelephone("USER_TELEPHONE")
```

:::tip[In Java...]
Use the `getUserPublicKeyByTelephoneAsync` function, which returns a `CompletableFuture<UserPublicKeyResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByTelephone(telephone: "USER_TELEPHONE")
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
response = await sdk.lockOperations.get_user_public_key_by_telephone("USER_TELEPHONE")
```

</TabItem>
</Tabs>

## Lookup user public key by local key

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByLocalKey("USER_LOCAL_KEY")
```

:::tip[In Java...]
Use the `getUserPublicKeyByLocalKeyAsync` function, which returns a `CompletableFuture<UserPublicKeyResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByLocalKey(localKey: "USER_LOCAL_KEY")
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
response = await sdk.lockOperations.get_user_public_key_by_local_key("USER_LOCAL_KEY")
```

</TabItem>
</Tabs>

## Lookup user public key by foreign key

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByForeignKey("USER_FOREIGN_KEY")
```

:::tip[In Java...]
Use the `getUserPublicKeyByForeignKeyAsync` function, which returns a `CompletableFuture<UserPublicKeyResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByForeignKey(foreignKey: "USER_FOREIGN_KEY")
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
response = await sdk.lockOperations.get_user_public_key_by_foreign_key("USER_FOREIGN_KEY")
```

</TabItem>
</Tabs>

## Lookup user public key by identity

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByIdentity("USER_IDENTITY")
```

:::tip[In Java...]
Use the `getUserPublicKeyByIdentityAsync` function, which returns a `CompletableFuture<UserPublicKeyResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByIdentity(identity: "USER_IDENTITY")
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
response = await sdk.lockOperations.get_user_public_key_by_identity("USER_IDENTITY")
```

</TabItem>
</Tabs>

## Batch lookup user public key by email

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByEmails(listOf("USER_EMAIL", "USER_EMAIL"))
```

:::tip[In Java...]
Use the `getUserPublicKeyByEmailsAsync` function, which returns a `CompletableFuture<List<BatchUserPublicKeyResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByEmails(emails: ["USER_EMAIL", "USER_EMAIL"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByEmails(ktList.fromJsArray(["USER_EMAIL", "USER_EMAIL"]));
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByEmails(["USER_EMAIL", "USER_EMAIL"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_user_public_key_by_emails(["USER_EMAIL", "USER_EMAIL"])
```

</TabItem>
</Tabs>

## Batch lookup user public key by telephone

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByTelephones(listOf("USER_TELEPHONE", "USER_TELEPHONE"))
```

:::tip[In Java...]
Use the `getUserPublicKeyByTelephonesAsync` function, which returns a `CompletableFuture<List<BatchUserPublicKeyResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByTelephones(telephones: ["USER_TELEPHONE", "USER_TELEPHONE"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByTelephones(ktList.fromJsArray(["USER_TELEPHONE", "USER_TELEPHONE"]));
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByTelephones(["USER_TELEPHONE", "USER_TELEPHONE"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_user_public_key_by_telephones(["USER_TELEPHONE", "USER_TELEPHONE"])
```

</TabItem>
</Tabs>

## Batch lookup user public key by local key

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByLocalKeys(listOf("USER_LOCAL_KEY"))
```

:::tip[In Java...]
Use the `getUserPublicKeyByLocalKeysAsync` function, which returns a `CompletableFuture<List<BatchUserPublicKeyResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByLocalKeys(localKeys: ["USER_LOCAL_KEY", "USER_LOCAL_KEY"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByLocalKeys(ktList.fromJsArray(["USER_LOCAL_KEY", "USER_LOCAL_KEY"]));
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByLocalKeys(["USER_LOCAL_KEY", "USER_LOCAL_KEY"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_user_public_key_by_local_keys(["USER_LOCAL_KEY", "USER_LOCAL_KEY"])
```

</TabItem>
</Tabs>

## Batch lookup user public key by foreign key

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getUserPublicKeyByForeignKeys(listOf("USER_FOREIGN_KEY", "USER_FOREIGN_KEY"))
```

:::tip[In Java...]
Use the `getUserPublicKeyByForeignKeysAsync` function, which returns a `CompletableFuture<List<BatchUserPublicKeyResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getUserPublicKeyByForeignKeys(foreignKeys: ["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"])
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getUserPublicKeyByForeignKey(ktList.fromJsArray(["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"]));
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetUserPublicKeyByForeignKeys(["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_user_public_key_by_foreign_keys(["USER_FOREIGN_KEY", "USER_FOREIGN_KEY"])
```

</TabItem>
</Tabs>

## Unlock

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) values from the context. To use these values from the context, you should set those parameters to null in the ```BaseOperation``` object.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val unlockOperation = LockOperations.UnlockOperation(baseOperation)
sdk.lockOperations().unlock(unlockOperation)
```

:::tip[In Java...]
Use the `unlockAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let unlockOperation = LockOperations.UnlockOperation(baseOperation: baseOperation, directAccessEndpoints: null)
sdk.lockOperations().unlock(unlockOperation: shareLockOperation)
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
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
data = doordeck_headless_sdk.UnlockOperation(baseOperation)
await sdk.lockOperations.unlock(data)
```

</TabItem>
</Tabs>

## Share lock

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) values from the context. To use these values from the context, you should set those parameters to null in the ```BaseOperation``` object.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val shareLock = LockOperations.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, TARGET_PUBLIC_KEY)
val shareLockOperation = LockOperations.ShareLockOperation(baseOperation, shareLock)
sdk.lockOperations().shareLock(shareLockOperation)
```

:::tip[In Java...]
Use the `shareLockAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let shareLock = LockOperations.ShareLock(targetUserId: "TARGET_USER_ID", targetUserRole: TARGET_USER_ROLE, targetUserPublicKey: TARGET_PUBLIC_KEY, start: null, end: null)
let shareLockOperation = LockOperations.ShareLockOperation(baseOperation: baseOperation, shareLock: shareLock)
sdk.lockOperations().shareLock(shareLockOperation: shareLockOperation)
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
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
shareLock = doordeck_headless_sdk.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, "BASE64_TARGET_PUBLIC_KEY")
data = doordeck_headless_sdk.ShareLockOperation(baseOperation, shareLock)
await sdk.lockOperations.share_lock(data)
```

</TabItem>
</Tabs>

## Batch share lock

:::info
* This functionality requires the device to support the batch sharing feature. The function will retrieve the device's capabilities, store them in a cache, and perform the batch operation if supported. Otherwise, it will default to the standard device sharing process.
* This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) values from the context. To use these values from the context, you should set those parameters to null in the ```BaseOperation``` object.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val users = listOf(LockOperations.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, TARGET_PUBLIC_KEY))
val shareLockOperation = LockOperations.BatchShareLockOperation(baseOperation, users)
sdk.lockOperations().batchShareLock(shareLockOperation)
```

:::tip[In Java...]
Use the `batchShareLockAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let users = [LockOperations.ShareLock(targetUserId: "TARGET_USER_ID", targetUserRole: TARGET_USER_ROLE, targetUserPublicKey: TARGET_PUBLIC_KEY, start: null, end: null)]
let shareLockOperation = LockOperations.BatchShareLockOperation(baseOperation: baseOperation, users: users)
sdk.lockOperations().batchShareLock(shareLockOperation: shareLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const baseOperation = new lockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID", NOT_BEFORE, ISSUED_AT, EXPIRES_AT, "UUID");
const userRole = doordeck.com.doordeck.multiplatform.sdk.model.common.UserRole;
const users = [new lockOperations.ShareLock("TARGET_USER_ID", userRole.USER, TARGET_PUBLIC_KEY, null, null)];
const shareLockOperation = new lockOperations.BatchShareLockOperation(baseOperation, ktList.fromJsArray(users));
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
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
users = [doordeck_headless_sdk.ShareLock("TARGET_USER_ID", TARGET_USER_ROLE, "BASE64_TARGET_PUBLIC_KEY")]
data = doordeck_headless_sdk.BatchShareLockOperation(baseOperation, users)
await sdk.lockOperations.batch_share_lock(data)
```

</TabItem>
</Tabs>

## Revoke access to lock

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) values from the context. To use these values from the context, you should set those parameters to null in the ```BaseOperation``` object.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val revokeAccessToLockOperation = LockOperations.RevokeAccessToLockOperation(baseOperation, listOf("USER_ID"))
sdk.lockOperations().revokeAccessToLock(revokeAccessToLockOperation)
```

:::tip[In Java...]
Use the `revokeAccessToLockAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let revokeAccessToLockOperation = LockOperations.RevokeAccessToLockOperation(baseOperation: baseOperation, users: ["USER_ID"])
sdk.lockOperations().revokeAccessToLock(revokeAccessToLockOperation: revokeAccessToLockOperation)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
const lockOperations = doordeck.com.doordeck.multiplatform.sdk.model.data.LockOperations;
const baseOperation = new lockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID", NOT_BEFORE, ISSUED_AT, EXPIRES_AT, "UUID");
const revokeAccessToLockOperation = new lockOperations.RevokeAccessToLockOperation(baseOperation, ktList.fromJsArray(["USER_ID"]));
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
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
data = doordeck_headless_sdk.RevokeAccessToLockOperation(baseOperation, ["USER_ID"])
await sdk.lockOperations.revoke_access_to_lock(data)
```

</TabItem>
</Tabs>

## Update secure setting unlock duration

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) values from the context. To use these values from the context, you should set those parameters to null in the ```BaseOperation``` object.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val updateSecureSettingUnlockDuration = LockOperations.UpdateSecureSettingUnlockDuration(baseOperation, UNLOCK_DURATION)
sdk.lockOperations().updateSecureSettingUnlockDuration(updateSecureSettingUnlockDuration)
```

:::tip[In Java...]
Use the `updateSecureSettingUnlockDurationAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let updateSecureSettingUnlockDuration = LockOperations.UpdateSecureSettingUnlockDuration(baseOperation: baseOperation, unlockDuration: UNLOCK_DURATION)
sdk.lockOperations().updateSecureSettingUnlockDuration(updateSecureSettingUnlockDuration: updateSecureSettingUnlockDuration)
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
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
data = doordeck_headless_sdk.UpdateSecureSettingUnlockDuration(baseOperation, UNLOCK_DURATION)
await sdk.lockOperations.update_secure_setting_unlock_duration(data)
```

</TabItem>
</Tabs>

## Update secure setting unlock between

:::info
This function can be used with the [user ID, certificate chain, and private key](context-manager.md#set-operation-context) values from the context. To use these values from the context, you should set those parameters to null in the ```BaseOperation``` object.
:::

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val baseOperation = LockOperations.BaseOperation("USER_ID", USER_CERTIFICATE_CHAIN_LIST, PRIVATE_KEY, "LOCK_ID")
val unlockBetween = LockOperations.UnlockBetween("START_HH_MM", "END_HH_MM", "TIMEZONE", DAYS_LIST)
val updateSecureSettingUnlockBetween = LockOperations.UpdateSecureSettingUnlockBetween(baseOperation, unlockBetween)
sdk.lockOperations().updateSecureSettingUnlockBetween(updateSecureSettingUnlockBetween)
```

:::tip[In Java...]
Use the `updateSecureSettingUnlockBetweenAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let baseOperation = LockOperations.BaseOperation(userId: "USER_ID", userCertificateChain: USER_CERTIFICATE_CHAIN_LIST, userPrivateKey: PRIVATE_KEY, lockId: "LOCK_ID", notBefore: NOT_BEFORE, issuedAt: ISSUED_AT, expiresAt: EXPIRES_AT, jti: UUID)
let unlockBetween = LockOperations.UnlockBetween(start: "START_HH_MM", end: "END_HH_MM", timezone: "TIMEZONE", days: ["MONDAY"], exceptions: ["FRIDAY"])
let updateSecureSettingUnlockBetween = LockOperations.UpdateSecureSettingUnlockBetween(baseOperation: baseOperation, unlockBetween: unlockBetween)
sdk.lockOperations().updateSecureSettingUnlockBetween(updateSecureSettingUnlockBetween: updateSecureSettingUnlockBetween)
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
baseOperation = doordeck_headless_sdk.BaseOperation("LOCK_ID", "USER_ID", USER_CERTIFICATE_CHAIN_LIST, "BASE64_PRIVATE_KEY")
unlockBetween = doordeck_headless_sdk.UnlockBetween("START_HH_MM", "END_HH_MM", "TIMEZONE", DAYS_LIST)
data = doordeck_headless_sdk.UpdateSecureSettingUnlockBetween(baseOperation, unlockBetween)
await sdk.lockOperations.update_secure_setting_unlock_between(data)
```

</TabItem>
</Tabs>

## Get pinned locks

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getPinnedLocks()
```

:::tip[In Java...]
Use the `getPinnedLocksAsync` function, which returns a `CompletableFuture<List<LockResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getPinnedLocks()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getPinnedLocks();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetPinnedLocks();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_pinned_locks()
```

</TabItem>
</Tabs>

## Get shareable locks

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.lockOperations().getShareableLocks()
```

:::tip[In Java...]
Use the `getShareableLocksAsync` function, which returns a `CompletableFuture<List<ShareableLockResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.lockOperations().getShareableLocks()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.lockOperations().getShareableLocks();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetLockOperations().GetShareableLocks();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.lockOperations.get_shareable_locks()
```

</TabItem>
</Tabs>
