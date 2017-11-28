# docker-openvpn
![badges-alpine] ![openvpn]

## What is OpenVPN
([from](https://en.wikipedia.org/wiki/OpenVPN) Wikipedia)
OpenVPN is an open-source software application that implements virtual private network (VPN) techniques for creating secure point-to-point or site-to-site connections in routed or bridged configurations and remote access facilities. It uses a custom security protocol[9] that utilizes SSL/TLS for key exchange. It is capable of traversing network address translators (NATs) and firewalls. It was written by James Yonan and is published under the GNU General Public License (GPL).

## How to use this image
This image was designed to provided a VPN connection to other containers (using `--net=container:vpn`, see [NETWORK: CONTAINER](https://docs.docker.com/engine/reference/run/#network-container))

[badges-alpine]: https://img.shields.io/badge/alpine-latest-green.svg?maxAge=2592000 "Alpine Linux"
[openvpn]: https://img.shields.io/badge/openvpn-2.4.4-green.svg?maxAge=2592000 "OpenVPN"
