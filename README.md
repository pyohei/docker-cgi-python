# docker-apache-python

This is a simple python web server settings.  
With this docker image, you can create simple web application with cgi.  

## How to use
```bash
# build image
docker build -t pycgi .
# run image
docker run -p 8883:80 -d pycgi
# exec container
docker exec -it `hash ID` /bin/bash
```
