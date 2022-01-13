#!/bin/bash
./gradlew fatJar

java -jar ./build/libs/Generator-1.0-SNAPSHOT-all.jar -d $PWD
ls
echo $PWD

echo "All done!"