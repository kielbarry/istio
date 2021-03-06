#!/usr/bin/env bash

# This is a temporary script, only to be used until we have a better official
# place and procedure for generation. PLEASE use with caution
# (read: not for general usage).

HUB=gcr.io/istio-testing
VERSION=$(date +%Y-%m-%d)

docker build -t $HUB/protoc:$VERSION .

gcloud docker -- push $HUB/protoc:$VERSION
