clearscore-demo
===============

A simple web app for demonstration helm and kubernetes

Getting started
---------------

**Requirements:**

 - Docker 17.12 or above Edge channel to be able run kubernetes or install minicube

### Build the app

``` shell
$ docker build -t clearscore-demo  .
```

### Docker Run 

``` shell
$ docker run -it --rm --name clearscore-demo -p 8080:8080 clearscore-demo &
$ curl http://localhost:8080/_healthcheck
OK
```

### Kubernetes run 
- Start kubernetes use Docker (https://docs.docker.com/docker-for-mac/#kubernetes)

``` shell
$ helm install --name cs-demo ./helm
```
follow after deployment notes 
