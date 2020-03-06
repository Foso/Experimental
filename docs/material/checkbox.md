!!! info
    This is the api of version dev04. Newer versions may have a different one

<p align="left">
  <img src ="../../images/CheckboxDemo.png" height=500 />
</p>

```kotlin
@Composable
fun CheckBoxDemo() {
    MaterialTheme {
        val checkedState = +state { true }
        Checkbox(
            checked = checkedState.value,
            onCheckedChange = { checkedState.value = it }
        )
    }
}
```