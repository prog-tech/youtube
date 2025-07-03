#!/bin/bash

if [ -z "$1" ]; then
  echo "Use: $0 <domain>"
  exit 1
fi

DOMAIN="$1"

sudo apt update
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx -d $DOMAIN

