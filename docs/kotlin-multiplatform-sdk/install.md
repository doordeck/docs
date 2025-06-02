# Install the SDK into your project

Easily integrate the Doordeck SDK into your project by following the platform-specific instructions below.

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="kmp" label="KMP">

The Kotlin Multiplatform artifacts are available on [Maven Central](https://central.sonatype.com/artifact/com.doordeck.headless.sdk/doordeck-sdk).

```kotlin showLineNumbers title="build.gradle.kts"
// Add Maven Central repository
repositories {
  mavenCentral()
}

// Import the package in the common source set
implementation("com.doordeck.headless.sdk:doordeck-sdk:[SDK_VERSION]")
```

:::info[Supported Platforms]
JVM, Android, jsNode, jsBrowser, iOS (x64, ARM x64, simulator ARM x64), macOS (ARM x64), and mingW (x64).
:::

</TabItem>
<TabItem value="jvm" label="JVM">

The JVM artifacts are available on [Maven Central](https://central.sonatype.com/artifact/com.doordeck.headless.sdk/doordeck-sdk-jvm).

```kotlin showLineNumbers title="build.gradle.kts"
// Add Maven Central repository
repositories {
  mavenCentral()
}

// Import the JVM package
implementation("com.doordeck.headless.sdk:doordeck-sdk-jvm:[SDK_VERSION]")
```
:::info[Requirement]
Java SDK 1.8 or higher.
:::

</TabItem>
<TabItem value="android" label="Android">

The Android artifacts are available on [Maven Central](https://central.sonatype.com/artifact/com.doordeck.headless.sdk/doordeck-sdk-android).

```kotlin showLineNumbers title="build.gradle.kts"
// Add Maven Central repository
repositories {
  mavenCentral()
}

// Import the Android package
implementation("com.doordeck.headless.sdk:doordeck-sdk-android:[SDK_VERSION]")
```
:::info[Requirement]
Android SDK 26 or higher.
:::

</TabItem>
<TabItem value="swift" label="Swift">

The iOS and macOS packages are available via [CocoaPods](https://cocoapods.org/pods/DoordeckSDK) and [Swift Package Manager (SPM)](https://github.com/doordeck/doordeck-headless-sdk-spm).

#### Cocoapods
```pod 'DoordeckSDK', '~> [SDK_VERSION]'```

#### Swift Package manager
1. In Xcode, select **File > Add Package Dependencies...**.
2. Enter the URL: [https://github.com/doordeck/doordeck-headless-sdk-spm](https://github.com/doordeck/doordeck-headless-sdk-spm).
3. Choose **Up to next major version** from the dependency rule dropdown, and click **Add Package**.

:::info[Requirement]
iOS 14 or higher.
:::

</TabItem>
<TabItem value="js" label="JavaScript">

The JavaScript artifacts are available on [NPM](https://www.npmjs.com/package/@doordeck/doordeck-headless-sdk).

```shell title="Shell"
npm install @doordeck/doordeck-headless-sdk --save
```

</TabItem>
<TabItem value="csharp" label="C#">

The Windows artifacts for C# are available on [NuGet](https://www.nuget.org/packages/Doordeck.Headless.Sdk).

```shell title="Shell"
dotnet add package Doordeck.Headless.Sdk
```
:::info[Requirement]
.NET 9 or higher, with unsafe code enabled.
:::

</TabItem>
<TabItem value="python" label="Python">

The Windows artifacts for Python are available on [PyPi](https://pypi.org/project/doordeck-headless-sdk/).

```shell title="Shell"
pip install doordeck-headless-sdk
```
:::info[Requirement]
Python 3.13.2.
:::

</TabItem>
</Tabs>

