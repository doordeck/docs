# Tiles resource

## Get Locks Belonging to a Tile

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a TileLocksResponse
val response = sdk.tiles().getLocksBelongingToTile(TILE_ID)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<TileLocksResponse>
var response = sdk.tiles().getLocksBelongingToTileAsync(TILE_ID);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a TileLocksResponse asynchronously
let response = await sdk.tiles().getLocksBelongingToTile(tileId: TILE_ID)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<TileLocksResponse>
const response = await doordeck.com.doordeck.multiplatform.sdk.api.tiles().getLocksBelongingToTile("TILE_ID");
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<TileLocksResponse>
var response = await sdk.GetTiles().GetLocksBelongingToTile(TILE_ID);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
response = await sdk.tiles.get_locks_belonging_to_tile("TILE_ID")
```

</TabItem>
</Tabs>

## Associate Multiple Locks

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.tiles().associateMultipleLocks(
  tileId = TILE_ID, 
  siteId = SITE_ID, 
  lockIds = listOf(LOCK_ID)
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.tiles().associateMultipleLocksAsync(TILE_ID, SITE_ID, listOf(LOCK_ID));
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.tiles().associateMultipleLocks(
  tileId: TILE_ID, 
  siteId: SITE_ID, 
  lockIds: [LOCK_ID]
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
// Returns a Promise<any>
await doordeck.com.doordeck.multiplatform.sdk.api.tiles().associateMultipleLocks(
  "TILE_ID", 
  "SITE_ID", 
  ["LOCK_ID"]
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetTiles().AssociateMultipleLocks(
  tileId: TILE_ID, 
  sideId: SITE_ID, 
  lockIds: [LOCK_ID]
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.tiles.associate_multiple_locks(
  "TILE_ID", 
  "SITE_ID", 
  ["LOCK_ID"]
)
```

</TabItem>
</Tabs>
