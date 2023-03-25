consul agent -server -bootstrap-expect=3 -node=consulserver01 -bind=172.29.0.3 -data-dir=/var/lib/consul -config-dir=/etc/consul.d
consul agent -server -bootstrap-expect=3 -node=consulserver02 -bind=172.29.0.2 -data-dir=/var/lib/consul -config-dir=/etc/consul.d
consul agent -server -bootstrap-expect=3 -node=consulserver03 -bind=172.29.0.4 -data-dir=/var/lib/consul -config-dir=/etc/consul.d
consul agent -node=consulclient01 -bind=172.29.0.5 -data-dir=/var/lib/consul -config-dir=/etc/consul.d
consul agent -node=consulclient02 -bind=172.29.0.6 -data-dir=/var/lib/consul -config-dir=/etc/consul.d -retry-join=172.29.0.3 -retry-join=172.29.0.4