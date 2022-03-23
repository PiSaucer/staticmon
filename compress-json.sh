#!/bin/bash

for dir in ./pokemon/**/; do
    mkdir "$dir"/min
    jq -c < "$dir/index.json" > "$dir/min/index.json"
done
