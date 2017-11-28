FROM alpine:latest

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.schema-version="1.0" \
  org.label-schema.name="mcf.io OpenVPN Client" \
  org.label-schema.build-date="${BUILD_DATE}" \
  org.label-schema.url="https://openvpn.net/" \
  org.label-schema.vcs-url="https://github.com/mcfio/docker-openvpn.git" \
  org.label-schema.vcs-ref="${VCS_REF}" \
  org.label-schema.vendor="mcf.io" \
  org.label-schema.docker.cmd="docker run -d -p 64738:64738 -p 64738:64738/udp -v <data dir>:/data mcfio/openvpn-client"

WORKDIR /etc/openvpn

RUN apk add --no-cache \
    openvpn

COPY config/ /etc/openvpn
COPY docker-entrypoint.sh /usr/local/bin

VOLUME ["/data"]

ENTRYPOINT ["docker-entrypoint.sh"]
