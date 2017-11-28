# docker-openvpn
![badges-alpine] ![openvpn]

## What is OpenVPN
(from [Wikipedia](https://en.wikipedia.org/wiki/OpenVPN))
OpenVPN is an open-source software application that implements virtual private network (VPN) techniques for creating secure point-to-point or site-to-site connections in routed or bridged configurations and remote access facilities. It uses a custom security protocol[9] that utilizes SSL/TLS for key exchange. It is capable of traversing network address translators (NATs) and firewalls. It was written by James Yonan and is published under the GNU General Public License (GPL).

## How to use this image
This image was designed to provided a VPN connection to other containers (using `--net=container:vpn`), see Docker's documentation on [NETWORK: CONTAINER](https://docs.docker.com/engine/reference/run/#network-container)) for additional information.

#### Create the initial VPN connection
You will need to create an openvpn configuration file, authorization file as well as the providers CA and CRL certificate files and store them in a directory that will be bind mounted to the container.

Currently this image expects the openvpn configuration file here `/data/client.ovpn`.  The other file locations are expected, but not necessarily required to be in the `/data` bind mount point either, so long as they are made available to the container in some way.

Then you can start the container like so.
```
sudo docker run -it -d --cap-add=NET_ADMIN --device=/dev/net/tun --name=vpn \
        -v /some/path:/data \
        mcfio/openvpn-client
```
Once the container is running, other containers can use the network connection.
```
sudo docker run -it -d --net=container:vpn <docker-image>
```

[badges-alpine]: https://img.shields.io/badge/alpine-latest-green.svg?maxAge=2592000 "Alpine Linux"
[openvpn]: https://img.shields.io/badge/openvpn-2.4.4-green.svg?maxAge=2592000 "OpenVPN"
