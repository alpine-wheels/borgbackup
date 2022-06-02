#!/bin/sh

set -e

# install dependencies
apk add --no-cache acl-dev gcc linux-headers lz4-dev musl-dev openssl-dev python3-dev xxhash-deve zstd-dev

pip install pkgconfig

# build
pip wheel --no-deps --requirement requirements.txt
