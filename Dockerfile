FROM scratch
MAINTAINER server monitor project <echotao.82@gmail.com>
ADD c7-docker.tar.xz /
LABEL Vendor="CentOS"
LABEL License=GPLv2

# Volumes for systemd
# VOLUME ["/run", "/tmp"]

# Environment for systemd
# ENV container=docker

#Install Grafana
RUN yum install -y https://grafanarel.s3.amazonaws.com/builds/grafana-2.5.0-1.x86_64.rpm

EXPOSE 8090

# For systemd usage this changes to /usr/sbin/init
# Keeping it as /bin/bash for compatability with previous
CMD ["service", "grafana-server", "start"]

