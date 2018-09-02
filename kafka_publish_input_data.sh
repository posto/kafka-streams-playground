#!/bin/sh
docker-compose exec kafka \
	kafka-console-producer --broker-list kafka:9092 --topic streams-plaintext-input 
