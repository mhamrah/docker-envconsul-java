FROM dockerfile/java:oracle-java8

MAINTAINER Michael Hamrah <m@hamrah.com>


RUN \
  curl -sL -o /tmp/consul.tar.gz https://github.com/hashicorp/envconsul/releases/download/v0.3.0/envconsul_0.3.0_linux_amd64.tar.gz && \
  tar -xzvf /tmp/consul.tar.gz -C /usr/bin/ --strip-components=1 && \
  rm -rf /tmp/consul.tar.gz
