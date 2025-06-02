# Sites resource

## List Sites

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.sites().listSites()
```

:::tip[In Java...]
Use the `listSitesAsync` function, which returns a `CompletableFuture<List<SiteResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.sites().listSites()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.sites().listSites();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetSites().ListSites();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.sites.list_sites()
```

</TabItem>
</Tabs>

## Get locks for a site

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.sites().getLocksForSite("SITE_ID")
```

:::tip[In Java...]
Use the `getLocksForSiteAsync` function, which returns a `CompletableFuture<List<SiteLocksResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.sites().getLocksForSite(siteId: "SITE_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.sites().getLocksForSite("SITE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetSites().GetLocksForSite("SITE_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.sites.get_locks_for_site("SITE_ID")
```

</TabItem>
</Tabs>

## Get users for a site

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.sites().getUsersForSite("SITE_ID")
```

:::tip[In Java...]
Use the `getUsersForSiteAsync` function, which returns a `CompletableFuture<List<UserForSiteResponse>>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.sites().getUsersForSite(siteId: "SITE_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.sites().getUsersForSite("SITE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetSites().GetUsersForSite("SITE_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.sites.get_users_for_site("SITE_ID")
```

</TabItem>
</Tabs>
