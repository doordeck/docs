# Sites resource

## List Sites

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<SiteResponse>
val response = sdk.sites().listSites()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<SiteResponse>>
var response = sdk.sites().listSitesAsync();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<SiteResponse> asynchronously
let response = await sdk.sites().listSites()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<SiteResponse>>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.sites().listSites();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<SiteResponse>>
var response = await sdk.GetSites().ListSites();
```

</TabItem>
<TabItem value="python" label="Python">

```python 
# Returns a Future[SimpleNamespace]
response = await sdk.sites.list_sites()
```

</TabItem>
</Tabs>

## Get locks for a site

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<SiteLocksResponse>
val response = sdk.sites().getLocksForSite(SITE_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<SiteLocksResponse>>
var response = sdk.sites().getLocksForSiteAsync(SITE_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<SiteLocksResponse> asynchronously
let response = await sdk.sites().getLocksForSite(siteId: SITE_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<SiteLocksResponse>>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.sites().getLocksForSite("SITE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<SiteLocksResponse>>
var response = await sdk.GetSites().GetLocksForSite(SITE_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.sites.get_locks_for_site("SITE_ID")
```

</TabItem>
</Tabs>

## Get users for a site

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a List<UserForSiteResponse>
val response = sdk.sites().getUsersForSite(SITE_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<List<UserForSiteResponse>>
var response = sdk.sites().getUsersForSiteAsync(SITE_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Array<UserForSiteResponse> asynchronously
let response = await sdk.sites().getUsersForSite(siteId: SITE_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<Array<UserForSiteResponse>>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.sites().getUsersForSite("SITE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<List<UserForSiteResponse>>
var response = await sdk.GetSites().GetUsersForSite(SITE_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.sites.get_users_for_site("SITE_ID")
```

</TabItem>
</Tabs>
