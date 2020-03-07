#!/bin/sh
# Einfaches Beispiel
echo Hallo, Welt!
pwd
mkdocs build
mv /site/* /docs/
