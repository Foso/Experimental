!!! info
    This is the api of version dev04. Newer versions may have a different one
    
<p align="left">
  <img src ="../../images/SwtichDemo.png" height=500 />
</p>


```kotlin
@Composable
fun SwitchDemo() {
    MaterialTheme {
        val checkedState = +state { true }
        Switch(
            checked = checkedState.value,
            onCheckedChange = { checkedState.value = it }
        )
    }
}
```