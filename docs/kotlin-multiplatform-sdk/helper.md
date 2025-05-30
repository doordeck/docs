# Helper resource

This function facilitates the upload of a logo into your application in a single call. Below are examples for different platforms.

## Upload platform logo

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers
sdk.helper().uploadPlatformLogo("APPLICATION_ID", "CONTENT_TYPE", IMAGE_BYTES)
```

:::tip[In Java...]
Use the `uploadPlatformLogoAsync` function, which returns a `CompletableFuture<Void>` instead.
:::

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
sdk.helper().uploadPlatformLogo(applicationId: "APPLICATION_ID", contentType: "CONTENT_TYPE", image: IMAGE_BYTES)
```

</TabItem>
<TabItem value="js" label="JavaScript">

```js showLineNumbers
await doordeck.com.doordeck.multiplatform.sdk.api.helper().uploadPlatformLogo("APPLICATION_ID", "CONTENT_TYPE", IMAGE_BYTES);
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
await sdk.GetHelper().UploadPlatformLogo("APPLICATION_ID", "CONTENT_TYPE", "BASE64_IMAGE");
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
await sdk.helper.upload_platform_logo("APPLICATION_ID", "CONTENT_TYPE", "BASE64_IMAGE")
```

</TabItem>
</Tabs>
