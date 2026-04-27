#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
node "$DIR/zhima-credit-payafteruse.bundle.js" "$@"
