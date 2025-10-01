# Crypto

## Generate a key pair

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs groupId="programming-language">
<TabItem value="kotlin" label="Kotlin">

```kotlin showLineNumbers
// Returns a KeyPair
val keyPair = sdk.crypto().generateKeyPair()
```

</TabItem>
<TabItem value="java" label="Java">

```java showLineNumbers
// Returns a KeyPair
var keyPair = sdk.crypto().generateKeyPair();
```

</TabItem>
<TabItem value="swift" label="Swift">

```swift showLineNumbers
// Returns a Crypto.KeyPair
let keyPair = sdk.crypto().generateKeyPair()
```

</TabItem>
<TabItem value="js" label="JavaScript">

```javascript showLineNumbers
// Returns a Crypto.KeyPair
const crypto = doordeck.com.doordeck.multiplatform.sdk.crypto.crypto();
const keyPair = crypto.generateKeyPair();
```

</TabItem>
<TabItem value="csharp" label="C#">

```csharp showLineNumbers
// Returns a KeyPair
var keyPair = sdk.GetCryptoManager().GenerateKeyPair();
```

</TabItem>
<TabItem value="python" label="Python">

```python showLineNumbers
# Returns a key pair map
keyPair = sdk.cryptoManager.generate_key_pair()
```

</TabItem>
</Tabs>
