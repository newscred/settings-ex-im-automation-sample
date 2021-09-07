#!/bin/bash

DEFAULT_BASE_URL=https://api.welcomesoftware.com/v3
BASE_API_URL="${BASE_URL:-$DEFAULT_BASE_URL}"

curl \
  --fail \
  --location \
  --request GET "${BASE_API_URL}/settings" \
  --header "Authorization: Bearer ${ACCESS_TOKEN}"