#!/bin/bash
cd unzip
docker build -q -t localhost:5001/dataplatform/unzip .
docker push -q localhost:5001/dataplatform/unzip
cd ..