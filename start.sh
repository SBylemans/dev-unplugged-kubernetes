#!/bin/bash

./kind/create-local-cluster.sh

echo "Applying helm files ..."
helmfile --quiet apply --suppress-diff --diff-args "--dry-run=true"
echo " => Done"

list_custom_transfos="
unzip/build.sh
"

echo "Building ..."
for j in ${list_custom_transfos[@]};
do
  echo "     -- Building $j"
  ./$j
done