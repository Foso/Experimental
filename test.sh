#!/bin/bash
./gradlew fatJar

cd ./build/libs/
echo $PWD
ls
java -jar ./Generator-1.0-SNAPSHOT-all.jar -d $PWD
cd ..
ls
echo $PWD

echo "All done!"