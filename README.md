# Minecraft Bedrock-Server 
## _Docker_

Run Minecraft Bedrock-Server in docker. Check newer version on https://www.minecraft.net/en-us/download/server/bedrock

## Installation

Build docker server:
 
```sh
make version=1.19.20.02 build
```
Run server. Set port and folder with wordl on local machine
 
```sh
make port=19132 path=/data/worlds run
```
Start server:
 
```sh
make start
```
Stop server:
 
```sh
make stop
```
Restart server:
 
```sh
make restart
```

Check logs, status:
 
```sh
make status
```

Remove server:
 
```sh
make remove
```
## License


**Free Software, Hell Yeah!**


