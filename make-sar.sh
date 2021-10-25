#!/usr/bin/env bash

APP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $APP_DIR/src
zip Dandelion.sar -r .
mv Dandelion.sar ..
