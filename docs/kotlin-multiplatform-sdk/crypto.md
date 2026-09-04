# Crypto

The crypto manager exposes the cryptographic primitives the SDK uses for
[ephemeral key registration](account.md#register-ephemeral-key) and for signing
[lock operations](lock-operations.md). All key pairs are **Ed25519**.

Each platform uses its own crypto provider and its own native key encoding:

|       Platform        |      Provider       |
|:---------------------:|:-------------------:|
|          JVM          |  Java Security API  |
|        Android        |    Bouncy Castle    |
| iOS / macOS / watchOS |   Apple CryptoKit   |
|  JS / Broswer / Node  |      Libsodium      |
|      C# / Python      |      Libsodium      |

## Generate a key pair

Generates a brand-new Ed25519 key pair. The key pair is **not** stored automatically.

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
# Returns a SimpleNamespace
keyPair = sdk.cryptoManager.generate_key_pair()
```

</TabItem>
</Tabs>
