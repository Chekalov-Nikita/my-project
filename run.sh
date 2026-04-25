#!/bin/bash

if [ ! -f config.txt ]; then
  echo "ERROR: config.txt not found"
  exit 1
fi

source config.txt

if [ -z "$PORT" ] || [ -z "$ENV" ]; then
  echo "ERROR: PORT or ENV is empty"
  exit 1
fi

echo "Starting app on port $PORT in $ENV mode"
echo "$(date): App started on port $PORT in $ENV mode" >> app.log