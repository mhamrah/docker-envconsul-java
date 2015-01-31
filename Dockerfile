FROM mhamrah/envconsul

MAINTAINER Michael Hamrah <m@hamrah.com>

RUN apt-get update && \
  apt-get install -y wget net-tools netcat && \
  wget -q --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u31-b13/jre-8u31-linux-x64.tar.gz && \
  mkdir /opt/jdk && \
  tar -zxf jre-8u31-linux-x64.tar.gz -C /opt/jdk && \
  update-alternatives --install /usr/bin/java java /opt/jdk/jre1.8.0_31/bin/java 100 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* *.gz


