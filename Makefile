build:
	sed -i 's/VERSION/$(version)/g' Dockerfile
	docker build -t avenus/bedrock-server-minecraft .

run:
	docker run -d --restart always  --name Bedrock-Server -p19132:$(port)/udp avenus/bedrock-server-minecraft -v $(path):/minecraft-server/worlds

start:
	docker start Bedrock-Server

stop:
	docker stop Bedrock-Server

status:
	docker logs  Bedrock-Server

restart:
	docker stop Bedrock-Server
	docker start Bedrock-Server

remove:
	docker stop Bedrock-Server
	docker rm Bedrock-Server
