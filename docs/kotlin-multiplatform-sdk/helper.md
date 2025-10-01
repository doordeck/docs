# Helper resource

This function facilitates the upload of a logo into your application in a single call. Below are examples for different platforms.

## Upload platform logo

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns Unit
sdk.helper().uploadPlatformLogo(
  applicationId = APPLICATION_ID, 
  contentType = "CONTENT_TYPE", 
  image = INPUT_STREAM
)
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a CompletableFuture<Void>
sdk.helper().uploadPlatformLogoAsync(APPLICATION_ID, "CONTENT_TYPE", INPUT_STREAM);
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns Void asynchronously
await sdk.helper().uploadPlatformLogo(
  applicationId: APPLICATION_ID, 
  contentType: "CONTENT_TYPE", 
  image: IMAGE_BYTES
)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.helper().uploadPlatformLogo(
  "APPLICATION_ID", 
  "CONTENT_TYPE", 
  IMAGE_BYTES
);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a Task<object>
await sdk.GetHelper().UploadPlatformLogo(
  applicationId: APPLICATION_ID, 
  contentType: "CONTENT_TYPE", 
  image: "BASE64_IMAGE"
);
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a Future[SimpleNamespace]
await sdk.helper.upload_platform_logo(
  "APPLICATION_ID", 
  "CONTENT_TYPE", 
  "BASE64_IMAGE"
)
```

</TabItem>
</Tabs>
