#!/bin/bash

# Periksa apakah argumen IPNODE telah diberikan
if [ -z "$1" ]; then
    echo "Usage: $0 <IP_ADDRESS>"
    exit 1
fi

# Simpan IPNODE dari argumen pertama
IPNODE="$1"

echo "Setting static IP address for Hyper-V with IP: $IPNODE"

cat << EOF | sudo tee /etc/netplan/01-netcfg.yaml
network:
  version: 2
  ethernets:
    eth0:
      dhcp4: no
      addresses: [${IPNODE}/24]
      routes:
      - to: default
        via: 10.10.0.1
      nameservers:
        addresses: [192.168.100.15]
EOF

sudo netplan apply
echo "Succesful ip ${IPNODE}"