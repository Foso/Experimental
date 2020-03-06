# Draggable 

https://developer.android.com/reference/kotlin/androidx/ui/foundation/gestures/package-summary#draggable

<p align="left">
  <img src ="../../images/DraggableDemo.png" height=500 />
</p>

```kotlin
@Composable
fun DraggableDemo(){

   val max = 300.dp
    val min = 0.dp
    val (minPx, maxPx) = withDensity(ambientDensity()) {
        min.toPx().value to max.toPx().value
    }

    val position = animatedDragValue(0f, minPx, maxPx)

    Draggable(DragDirection.Horizontal,position,{ position.animatedFloat.snapTo(it) }) {
        // dragValue is the current value in progress of dragging
        val draggedDp = withDensity(ambientDensity()) {
            position.value.toDp()
        }

       Column {
           Padding(left = draggedDp){
               Text("Drag me ")
           }
           Text("Dragvalue: "+position.value.dp)
       }
    }
}
```