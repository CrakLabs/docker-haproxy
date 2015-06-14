FROM haproxy:1.5

MAINTAINER Julien Maitrehenry "julien.maitrehenry@me.com"

RUN apt-get update \
	&& apt-get install -y wget ca-certificates \
	&& wget -qO - https://github.com/hashicorp/consul-template/releases/download/v0.10.0/consul-template_0.10.0_linux_amd64.tar.gz | tar xzf - \
	&& mv consul-template_0.10.0_linux_amd64/consul-template /bin/consul-template \
	&& apt-get remove -y wget ca-certificates \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf consul-template_0.10.0_linux_amd64

COPY haproxy.ctmpl /tmp/haproxy.ctmpl
COPY start.sh start.sh

EXPOSE 80
EXPOSE 1936 

CMD ./start.sh
