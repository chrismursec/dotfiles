#!/bin/bash

# Check if solaar is running
if pgrep solaar >/dev/null; then
    pkill solaar
    sleep 2
fi

# Execute solaar with the desired options
solaar -w hide

