#!/usr/bin/env sh
set -e

exec /usr/sbin/openvpn --config /data/config.ovpn
