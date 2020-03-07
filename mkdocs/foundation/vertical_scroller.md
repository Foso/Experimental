# VerticalScroller

!!! info
    This is the api of version dev04. Newer versions may have a different one

https://developer.android.com/reference/kotlin/androidx/ui/foundation/package-summary#verticalscroller

When an app has layout content that might be longer than the height of the device and that content should be vertically scrollable, then we need to use a VerticalScroller.

<video width="320" height="240" controls>
  <source src="../../images/VerticalScroller.webm" type="video/webm">
Your browser does not support the video tag.
</video>

```kotlin
/**
 * A container that composes all of its contents and lays it out, fitting the width of the child.
 * If the child's height is less than the [Constraints.maxHeight], the child's height is used,
 * or the [Constraints.maxHeight] otherwise. If the contents don't fit the height, the drag gesture
 * allows scrolling its content vertically. The contents of the VerticalScroller are clipped to
 * the VerticalScroller's bounds.
 */
```

```kotlin
@Composable
        /**
         * @see wiki [https://github.com/Foso/Jetpack-Compose-Playground/VerticalScroller]
         */
fun VerticalScrollerDemo() {
        MaterialTheme {
            VerticalScrollerExample()
        }

}

@Composable
fun VerticalScrollerExample() {
    VerticalScroller {
        //Only one child is allowed in a VerticalScroller
        Column {
            for (i in 0..60) {
                Text("Hello World!")
            }
        }
    }
}
```

Note that a VerticalScroller can only contain a single child element so if you need multiple things to be scrollable, you need to wrap that content into a layout as shown above.