#!/bin/bash
# Environment Path: /usr/local/bin:/usr/bin:/bin
# Date Created: 2024-05-17
# Date Modified: 2024-05-17
# Author: Jerry
# Description: This script continuously monitors and kills specific processes.
# Usage: ./kill_netskope_processes.sh

declare -a PROCESSES=("com.netskope.client.Netskope-Client.NetskopeClientMacAppProxy","Netscope Client")

while true; do
  for process in "${PROCESSES[@]}"; do
    pgrep $process &> /dev/null && pkill $process
  done

  sleep 5
done

#Netskopoop :D
