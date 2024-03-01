#!/bin/bash

while IFS= read -r proxy; do
  echo "Trying proxy: $proxy"
  if output=$(curl -x "$proxy" ip.me 2> /dev/null); then
    echo "Success!"
    echo "$output"
  else
    echo "Error occurred for proxy: $proxy"
    echo "$output"
  fi
done
