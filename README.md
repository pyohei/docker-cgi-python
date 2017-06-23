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

You can Access from the below URL.
* [http://localhost:8883/cgi-bin2/test.cgi](http://localhost:8883/cgi-bin2/test.cgi)
* [http://localhost:8883/cgi-bin2/test2.cgi](http://localhost:8883/cgi-bin2/test.cgi)
* [http://localhost:8883/cgi-bin2/test3.cgi](http://localhost:8883/cgi-bin2/test.cgi)

### References

* [Usage of docker with apache2](https://www.dockerbook.com/code/6/jekyll/apache/Dockerfile)
* [【Linux】Rubyで書いたCGIをApacheで動かしてみる](http://note.kurodigi.com/apache-cgi/)

### Licence

* MIT
