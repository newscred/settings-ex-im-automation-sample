#!/bin/bash

DEFAULT_FILE_PATH="./config.json"
CONFIG_FILE_PATH="${FILE_PATH:-$DEFAULT_FILE_PATH}"

DEFAULT_BASE_URL=https://api.welcomesoftware.com/v3
BASE_API_URL="${BASE_URL:-$DEFAULT_BASE_URL}"

curl \
  --fail \
  --location \
  --request POST "${BASE_API_URL}/settings" \
  --header "Authorization: Bearer ${ACCESS_TOKEN}" \
  --header "Content-Type: application/json" \
  --data-binary "@${CONFIG_FILE_PATH}"