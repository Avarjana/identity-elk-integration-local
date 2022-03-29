#logstash
config="http"
while getopts c: flag
do
    case "${flag}" in
        c) config=${OPTARG};;
    esac
done

mkdir -p /etc/logstash/config/certs
cp logstash.yml /etc/logstash/logstash.yml

if [ $config = "filebeat" ]; then
    echo "RUNNING IN FILEBEAT MODE"
    cp filbeat.conf /usr/share/logstash/logstash-config.conf
elif [ $config = "debug" ]; then
    echo "RUNNING IN DEBUG MODE"
    cp debug.conf /usr/share/logstash/logstash-config.conf
else
    echo "RUNNING IN HTTP MODE"
    cp logstash.conf /usr/share/logstash/logstash-config.conf
fi

cp /etc/elasticsearch/certs/http_ca.crt /etc/logstash/config/certs/ca.crt

sudo /usr/share/logstash/bin/logstash -f logstash-config.conf --config.reload.automatic