# Build the project

To build the project, you need to specify the Android SDK directory. To do this, create a `local.properties` file in the root project directory with the following configuration:

```
sdk.dir=ANDROID_SDK_DIR
```

:::info
It’s normal to see `Unresolved references`. For example, if you are using Windows, you won’t be able to resolve macOS-specific imports.
:::
