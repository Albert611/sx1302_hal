#!/bin/sh
# get gateway ID from its MAC address to generate an EUI-64 address
GWID_MIDFIX="FFFE"
GWID_BEGIN=$(ip link show wlan0 | awk '/ether/ {print $2}' | awk -F\: '{print $1$2$3}')
GWID_END=$(ip link show wlan0 | awk '/ether/ {print $2}' | awk -F\: '{print $4$5$6}')
echo "Gateway_ID is "$GWID_BEGIN$GWID_MIDFIX$GWID_END""