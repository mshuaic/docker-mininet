FROM ubuntu

USER root
WORKDIR /root

COPY ENTRYPOINT.sh /

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    iproute2 \
    iputils-ping \
    net-tools \
    x11-xserver-utils \
    xterm \
    git \
    sudo \
&& git clone git://github.com/mininet/mininet \
&& ./mininet/util/install.sh -a


ENTRYPOINT ["/ENTRYPOINT.sh"]
