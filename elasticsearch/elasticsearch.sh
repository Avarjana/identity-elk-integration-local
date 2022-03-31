#elasticsearch
mkdir -p /usr/share/elasticsearch/logs
mkdir -p /usr/share/elasticsearch/data
mkdir -p /etc/elasticsearch/config/saml

chown -R elasticsearch /usr/share/elasticsearch
chown -R elasticsearch /etc/elasticsearch

cp elastic.yml /etc/elasticsearch/elasticsearch.yml
cp cert.cer /etc/elasticsearch/cert.cer
cp jvm.options /etc/elasticsearch/jvm.options

cp jswkset.json /etc/elasticsearch/jswkset.json

# add metadata for SSO
# cp metadata_new.xml /etc/elasticsearch/config/saml/metadata_new.xml

echo "Zl2Q03cTGXqgat7ntm9MfuP4eToa" | sudo -u elasticsearch /usr/share/elasticsearch/bin/elasticsearch-keystore add -x 'xpack.security.authc.realms.oidc.oidc1.rp.client_secret' -f

/usr/share/elasticsearch/bin/elasticsearch-users useradd wso2user -p changeme -r superuser

sudo -u elasticsearch /usr/share/elasticsearch/bin/elasticsearch