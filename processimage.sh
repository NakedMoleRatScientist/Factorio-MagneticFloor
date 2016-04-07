#!/bin/bash

for i in graphics/directives/*.kra; do
  extract=graphics/directives/$(basename $i ".kra").png
  unzip -j -p $i "mergedimage.png" > $extract
done
