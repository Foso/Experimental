#!/bin/bash
./gradlew fatJar
echo $PWD
java -jar ./build/libs/Generator-1.0-SNAPSHOT-all.jar -d $PWD
cd ..
echo $PWD

echo "All done!"