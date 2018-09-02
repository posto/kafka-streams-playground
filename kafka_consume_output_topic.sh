#!/bin/sh
docker-compose exec kafka kafka-console-consumer --bootstrap-server kafka:9092 --topic streams-wordcount-output \
	--from-beginning --property print.key=true --property print.value=true \
	--property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
	--property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer
