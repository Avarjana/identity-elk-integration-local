#logstash
mkdir -p /etc/logstash/config/certs

cp logstash.conf /usr/share/logstash/logstash-config.conf
cp /etc/elasticsearch/certs/http_ca.crt /etc/logstash/config/certs/ca.crt

sudo /usr/share/logstash/bin/logstash -f logstash-config.conf