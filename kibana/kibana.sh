#kibana
chown -R elasticsearch /usr/share/kibana
mkdir -p /usr/share/kibana/config
cp kibana.yml /usr/share/kibana/config/kibana.yml

sudo -u elasticsearch /usr/share/kibana/bin/kibana