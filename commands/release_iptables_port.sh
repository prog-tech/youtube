#!/bin/bash

# Check if the port exists
if [ -z "$1" ]; then
  echo "Use: $0 <port>"
  exit 1
fi

PORT="$1"

# Check if port is a valid number
if ! [[ "$PORT" =~ ^[0-9]+$ ]] || [ "$PORT" -lt 1 ] || [ "$PORT" -gt 65535 ]; then
  echo "Error: '$PORT' is not a valid port (1-65535)."
  exit 1
fi

# Executa os comandos iptables
echo "Releasing TCP port $PORT ..."

sudo iptables -I INPUT -p tcp --dport "$PORT" -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -I OUTPUT -p tcp --sport "$PORT" -m conntrack --ctstate ESTABLISHED -j ACCEPT
sudo netfilter-persistent save

echo "Port $PORT released successfuly."

