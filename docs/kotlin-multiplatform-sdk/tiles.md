# Tiles resource

## Get Locks Belonging to a Tile

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
val response = sdk.tiles().getLocksBelongingToTile("TILE_ID")
```

:::tip[In Java...]
Use the `getLocksBelongingToTileAsync` function, which returns a `CompletableFuture<TileLocksResponse>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
let response = sdk.tiles().getLocksBelongingToTile(tileId: "TILE_ID")
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const response = await doordeck.com.doordeck.multiplatform.sdk.api.tiles().getLocksBelongingToTile("TILE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
var response = await sdk.GetTiles().GetLocksBelongingToTile("TILE_ID");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
response = await sdk.tiles.get_locks_belonging_to_tile("TILE_ID")
```

</TabItem>
</Tabs>

## Associate Multiple Locks

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.tiles().associateMultipleLocks("TILE_ID", "SITE_ID", listOf("LOCK_ID"))
```

:::tip[In Java...]
Use the `associateMultipleLocksAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.tiles().associateMultipleLocks(tileId: "TILE_ID", siteId: "SITE_ID", lockIds: ["LOCK_ID"]))
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
const ktList = doordeck.kotlin.collections.KtList;
await doordeck.com.doordeck.multiplatform.sdk.api.tiles().associateMultipleLocks("TILE_ID", "SITE_ID", ktList.fromJsArray(["LOCK_ID"]));
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetTiles().AssociateMultipleLocks("TILE_ID", "SITE_ID", ["LOCK_ID"]);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.tiles.associate_multiple_locks("TILE_ID", "SITE_ID", ["LOCK_ID"])
```

</TabItem>
</Tabs>
