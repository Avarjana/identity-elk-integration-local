# Steps

## Installation ELK 8.X

Ubuntu Installing and configuring Elasticsearch must go through a few steps. Add the repository key first,

```
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg
```

Install the Apt Transport HTTPS since it might not be installed by default.

```
sudo apt-get install apt-transport-https
```

Now run the following commands to complete the installation.

```
echo https://artifacts.elastic.co/packages/8.x/apt stable main&quot; | sudo tee -a /etc/apt/sources.list.d/elastic-8.x.list
```

Install ELK
```
sudo apt-get install elasticsearch &&
sudo apt-get install logstash &&
sudo apt-get install kibana
```

## Running the project

Run in the following order one after another from parent directory,

You can use logstash configs as,
* debug - for debugging and testing purposes
* http - http publisher from WSO2 IS (Default)
* filebeat - logger publisher from WSO2 IS via Filbeat

```
sudo sh ./elasticsearch/elasticsearch.sh
sudo sh ./filbeat/filbeat.sh
sudo sh ./logstashlogstash.sh -c <<configuration type default: http>>
sudo sh ./kibana/kibana.sh
```
