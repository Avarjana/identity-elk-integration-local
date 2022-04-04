cp filebeat.yml /etc/filebeat/filebeat.yml

#chown -R elasticsearch /etc/filebeat
#chown -R elasticsearch /usr/share/filebeat

sudo /usr/share/filebeat/bin/filebeat --strict.perms=false -e -d "*"
