#!/bin/bash

LOG_FILE="/var/log/osquery/osqueryd.results.log"

if [ -s "$LOG_FILE" ]; then
    echo "Suspicius activity detected!"
    return 1
  else
    echo "No suspicious activity detected."
    return 0
  fi
