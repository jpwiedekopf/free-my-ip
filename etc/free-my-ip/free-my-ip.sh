#!/bin/bash

if [ "$(uname)" == "Linux" ]; then
  systemctl is-active --quiet free-my-ip.service && sleep 10
  # if running from a systemd service, wait a bit for the link to become active
fi

url="$(cat ./url.txt)"

echo "Updating IP: "
curl "$url"

