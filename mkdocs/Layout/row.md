# Row
<p align="left">
  <img src ="https://raw.githubusercontent.com/Foso/Jetpack-Compose-Playground/master/docs/screenshots/RowExample.png" height=500 />
</p>

```kotlin
@Composable
        /**
         * @see wiki [https://github.com/Foso/Jetpack-Compose-Playground/Row]
         */
fun RowDemo() {
        MaterialTheme {
            RowExample()
        }
}

@Composable
fun RowExample() {
    Row {
        Text(text = " Hello World!")
        Text(text = " Hello World!2")
    }
}
```
