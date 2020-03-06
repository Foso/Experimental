!!! info
    This the api of version dev04. Newer versions may have a different one

<p align="left">
  <img src ="/images/AlertDialogSample.png" height=500 />
</p>

```kotlin

@Composable
fun AlertDialogSample() {
    MaterialTheme {
        Column {
            val openDialog = +state { false }

            Button("Click me", onClick = {
                openDialog.value = true
            })

            if (openDialog.value) {
                AlertDialog(
                    onCloseRequest = {
                        openDialog.value = false
                    },
                    title = {
                        Text(text = "Dialog Title")
                    },
                    text = {
                        Text("Here is a text ")
                    },
                    confirmButton = {
                        Button(
                            "This is the Confirm Button",
                            onClick = {
                                openDialog.value = false
                            })
                    },
                    dismissButton = {
                        Button(
                            "This is the dismiss Button",
                            onClick = {
                                openDialog.value = false
                            })
                    },
                    buttonLayout = AlertDialogButtonLayout.Stacked
                )
            }
        }

    }
}
```