FROM mcfio/alpine

# Install Dependent Packages
RUN apk upgrade --update \
  && apk add --no-cache \
    openvpn

COPY root/ /

# volumes and ports
WORKDIR /tmp
VOLUME /config