#!/usr/bin/env sh
# Build compressed Vanilla.bash from source
#
# Copyright 2021 林博仁(Buo-ren, Lin) <Buo.Ren.Lin@gmail.com>
# SPDX-License-Identifier: CC-BY-SA-4.0

# Ensure script terminates when problems occurred
set \
    -o errexit \
    -o nounset

PRODUCT_IDENTIFIER="${PRODUCT_IDENTIFIER:-${DRONE_REPO#*/}}"

apk add \
	gzip

gzip \
    --keep \
    Vanilla.bash

echo
echo Gzipped Vanilla.bash generated successfully.
