#!/bin/bash

set -x

: "${BOX_NAME}"
: "${VERSION}"

vagrant package --output ${BOX_NAME}.box
# vagrant cloud auth login
vagrant cloud publish cloudkats/${BOX_NAME} "${VERSION}-$(date +%Y.%m.%d)" virtualbox ${BOX_NAME}.box --release
