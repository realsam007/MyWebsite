#!/bin/bash
URL="https://my-website-frontend.netlify.app" # Replace with your website URL

echo "Running test for homepage: $URL"
response=$(curl --write-out "%{http_code}" --silent --output /dev/null "$URL")

if [ "$response" -eq 200 ]; then
  echo "Homepage is accessible: Test Passed"
  exit 0
else
  echo "Homepage is not accessible: Test Failed with HTTP status $response"
  exit 1
fi
