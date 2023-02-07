# LGSCONVERTER

A docker sample of a hxdr container

## To build
```
docker build -t hxdr/lgsconverter:1.0 .
```

# Execution command
## Run production
```sh
docker run --rm --user hxdr:hxdr -v C:\volumes\david\input:/home/data -v C:\volumes\david\output:/home/hxdr/OutputFiles -v C:\volumes\david\logs:/home/hxdr/logs --memory="1g" hxdr/lgsconverter:1.0  
```

## Run debug with interactive console
```sh
docker run -it --rm --user hxdr:hxdr -v C:\volumes\david\input:/home/hxdr/data -v C:\volumes\david\output:/home/hxdr/OutputFiles -v C:\volumes\david\logs:/home/hxdr/logs --memory="1g" hxdr/lgsconverter:1.0 /bin/bash 
```