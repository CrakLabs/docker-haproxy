FROM haproxy:1.5

COPY consul-template /bin/consul-template
COPY haproxy.ctmpl /tmp/haproxy.ctmpl
COPY start.sh start.sh

EXPOSE 80
EXPOSE 1936 

CMD ./start.sh
