# Steps

## Installation ELK 8.X

Ubuntu Installing and configuring Elasticsearch must go through a few steps. Add the repository key first,

```wget -qO -[https://artifacts.elastic.co/GPG-KEY-elasticsearch](https://artifacts.elastic.co/GPG-KEY-elasticsearch) | sudo apt-key add -```

Install the Apt Transport HTTPS since it might not be installed by default.

```sudo apt-get install apt-transport-https```

Now run the following commands to complete the installation.

```echo https://artifacts.elastic.co/packages/7.x/apt stable main&quot; | sudo tee -a /etc/apt/sources.list.d/elastic-8.x.list```

Install ELK
```
sudo apt-get install elasticsearch &&
sudo apt-get install logstash &&
sudo apt-get install kibana
```

## Running the project

Run in the following order one after another,
```
sudo sh elasticsearch.sh
sudo sh logstash.sh
sudo sh kibana.sh
```
