# Crypto

## Generate a key pair

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="jvm-android" label="JVM & Android">

```kotlin showLineNumbers showLineNumbers
val keyPair = sdk.crypto().generateKeyPair()
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers showLineNumbers
let keyPair = sdk.crypto().generateKeyPair()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```javascript showLineNumbers
const crypto = doordeck.com.doordeck.multiplatform.sdk.crypto.crypto()
const keyPair = crypto.generateKeyPair();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers showLineNumbers
var keyPair = sdk.GetCryptoManager().GenerateEncodedKeyPair();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers showLineNumbers
keyPair = sdk.cryptoManager.generate_key_pair()
```

</TabItem>
</Tabs>
