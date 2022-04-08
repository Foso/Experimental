package de.jensklingenberg.folders2kt

import java.io.File


fun main(args: Array<String>) {

    val debug = false
    val cmdArgs = if (debug) {
        arrayOf("-d", "/home/jens/Code/2022/jk/Experimental/build")
    } else {
        args
    }

    val printSource = cmdArgs.contains("-source")
    val execute = !printSource
    val dirParameterIndex = cmdArgs.indexOf("-d")
    if (dirParameterIndex == -1) {
        throw Exception("directory paramater -d missing")
    }
    val folderPath = cmdArgs[dirParameterIndex + 1]

   //File(folderPath+"/web/Hallo.txt").mkdirs()
    File(folderPath+"/web/index.html").writeText("<div>Hallo</div>")

}
