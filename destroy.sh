#!/bin/bash

kind delete cluster --name mission-control
docker stop kind-registry && docker rm kind-registry