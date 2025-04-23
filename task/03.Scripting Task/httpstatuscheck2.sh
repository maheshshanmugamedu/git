#!/bin/bash

# URL to check
URL="https://www.guvi.in"

# Get HTTP status code using wget
STATUS_CODE=$(wget --spider --server-response "$URL" 2>&1 | awk '/HTTP\// {print $2}' | tail -n1)

echo "HTTP Status Code: $STATUS_CODE"

# Check response and print message
if [[ "$STATUS_CODE" -ge 200 && "$STATUS_CODE" -lt 300 ]]; then
    echo "Success: The website is reachable."
elif [[ "$STATUS_CODE" -ge 400 && "$STATUS_CODE" -lt 500 ]]; then
    echo "Client Error: The request failed. Check the URL or request format."
elif [[ "$STATUS_CODE" -ge 500 && "$STATUS_CODE" -lt 600 ]]; then
    echo "Server Error: The website is experiencing issues. Try again later."
else
    echo "Unexpected response. Please check manually."
fi

