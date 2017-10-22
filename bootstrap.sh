#!/usr/bin/env bash

# Reference:
# https://www.elastic.co/guide/en/elasticsearch/reference/current/deb.html
# https://qbox.io/blog/qbox-a-vagrant-virtual-machine-for-elasticsearch-2-x
#
# If Elasticsearch fails to start for any reason, it will print the reason for failure to STDOUT.
# Log files can be found in /var/log/elasticsearch/.

sudo apt-get update
sudo apt-get upgrade

# Install OpenJDK
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get purge openjdk*
sudo apt-get -y install openjdk-8-jdk-headless

# Install ES
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
sudo apt-get update && sudo apt-get install elasticsearch

# Either of the next two lines is needed to be able to access "localhost:9200" from the host os
sudo echo "network.bind_host: 0" >> /etc/elasticsearch/elasticsearch.yml
sudo echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml

# Enable CORS
sudo echo "http.cors.enabled: true" >> /etc/elasticsearch/elasticsearch.yml
sudo echo "http.cors.allow-origin: /https?:\/\/.*/" >> /etc/elasticsearch/elasticsearch.yml

# Start Elasticsearch automatically on load
sudo update-rc.d elasticsearch defaults 95 10
sudo -i service elasticsearch start
