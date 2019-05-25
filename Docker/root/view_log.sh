#!/bin/sh

cat $1 | jq . | sed 's/\\n/\'$'\n/g'
