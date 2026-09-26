#!/bin/bash

REPO_URL="$1"

APP_NAME=$(basename "$REPO_URL" .git)

APP_NAME=$(echo "$APP_NAME" | tr '[:upper:]' '[:lower:]')
APP_NAME=$(echo "$APP_NAME" | sed 's/[^a-z0-9-]/-/g')
APP_NAME=$(echo "$APP_NAME" | sed 's/^-*//;s/-*$//')

echo "$APP_NAME"