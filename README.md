# Vagrant Kafka

## Installation
1. install [vagrant](https://www.vagrantup.com/DOCS/installation/)
2. kafka is on local virtual machine ip `192.168.33.10`

## Machine commands

1. enter vagrant machine `vagrant ssh`
2. `startkafka` - will start the kafka server on the virtual machine

## Check Kafka

create new topic
```
bin/kafka-topics.sh --create --zookeeper 192.168.33.10:2181 --replication-factor 1 --partitions 1 --topic test
```

producer
```
bin/kafka-console-producer.sh --broker-list 192.168.33.10:9092 --topic test
```

consumer
```
bin/kafka-console-consumer.sh --bootstrap-server 192.168.33.10:9092 --topic test --from-beginning
```
