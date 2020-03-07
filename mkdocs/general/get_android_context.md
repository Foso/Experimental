!!! info
    This is the api of version dev04. Newer versions may have a different one
    
You can use ambient(ContextAmbient) to receive the context of your Android App inside a Compose Function

```kotlin 
@Composable
fun AndroidContextComposeDemo() {
        val context = ContextAmbient.current
        Text("Read this string from Context: "+context.getString(R.string.app_name))
}
```