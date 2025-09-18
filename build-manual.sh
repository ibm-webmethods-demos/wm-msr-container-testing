#!/bin/sh

BUILD_DOCKERFILE="Dockerfile"
BUILD_REG=
BUILD_TAG=1.0.0-local

docker build \
    -t ${BUILD_REG}wmtesting-msr-package:${BUILD_TAG} \
    -f ${BUILD_DOCKERFILE} \
    .

echo "Done!!"
exit 0;