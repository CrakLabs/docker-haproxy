#!/bin/sh
consul-template \
    -consul $CONSUL_SERVER \
    -template "/tmp/haproxy.ctmpl:/usr/local/etc/haproxy/haproxy.cfg:haproxy -f /usr/local/etc/haproxy/haproxy.cfg -p /var/run/haproxy.pid -sf \$(cat /var/run/haproxy.pid) &"
