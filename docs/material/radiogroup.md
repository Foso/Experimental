!!! info
    This is the api of version dev04. Newer versions may have a different one

<p align="left">
  <img src ="/images/RadioGroupExample.png" height=500 />
</p>

```kotlin
@Composable
fun RadioGroupSample() {
    MaterialTheme {
        val radioOptions = listOf("A", "B", "C")
        val (selectedOption, onOptionSelected) = +state { radioOptions[0] }
        RadioGroup(
            options = radioOptions,
            selectedOption = selectedOption,
            onSelectedChange = onOptionSelected
        )
    }
}
```