# Docker(Ubuntu20.04) for cgi with python(2.7/3.6/3.7/3.8/3.9)

This is a simple python web server settings.  
With this docker image, you can create simple web application with cgi.  

## How to use

```bash
# build image
docker build -t pycgi .
# run image
HASH=`docker run -p 8883:80 -d pycgi`
# exec container
docker exec -it $HASH /bin/bash
```

You can Access from the below URL after run docker container.  

* Shell Script ... [http://localhost:8883/cgi-bin2/sh.cgi](http://localhost:8883/cgi-bin2/sh.cgi)
* Python2.7 ... [http://localhost:8883/cgi-bin2/py27.cgi](http://localhost:8883/cgi-bin2/py27.cgi)
* Python3.6 ... [http://localhost:8883/cgi-bin2/py36.cgi](http://localhost:8883/cgi-bin2/py36.cgi)
* Python3.7 ... [http://localhost:8883/cgi-bin2/py37.cgi](http://localhost:8883/cgi-bin2/py37.cgi)
* Python3.8 ... [http://localhost:8883/cgi-bin2/py38.cgi](http://localhost:8883/cgi-bin2/py38.cgi)
* Python3.9 ... [http://localhost:8883/cgi-bin2/py39.cgi](http://localhost:8883/cgi-bin2/py39.cgi)

## Allow Python version

* 2.7
* 3.6
* 3.7
* 3.8
* 3.9

### References

* [Usage of docker with apache2](https://www.dockerbook.com/code/6/jekyll/apache/Dockerfile)
* [【Linux】Rubyで書いたCGIをApacheで動かしてみる](http://note.kurodigi.com/apache-cgi/)(Japanese)

### Licence

* [MIT](https://github.com/pyohei/docker-cgi-python/blob/master/LICENSE)
