# demo-js-nginx-docker-k8s

This is demo page of js on Nginx on Docker and k8s. 
But these are still being verified.
+ js demo page.
  + Used [particles.js](https://github.com/VincentGarreau/particles.js/).
+ Dockerfile of Nginx + demo page. 
+ manifestfiles of k8s.
+ Concourse pipeline is used [jacopen/simple-php](https://github.com/jacopen/simple-php).


## docker build/push Commands for mac or linux
```
cd demo-js-nginx/
docker build -t takuyak/nginx-sample-bl:v1 ./
docker run -d --name demo -p 80:80 takuyak/nginx-sample-gr:v1
docker stop demo
docker rm demo
docker login
docker push takuyak/nginx-sample-bl:v1
```

## deploy to k8s

```
# edit /k8s/bl.yml and changed tag
kubectl -f /k8s/bl.yml
kubectl get all
```

## automation deploy to k8s via concourse pipeline
```
# edit k8s-pipeline/pipeline.yml and  params.yml
# http://concourse:8080 is Your concourse-ci
fly -t gittest login -c http://concourse:8080
fly -t gittest set-pipeline --pipeline my-pipeline --config pipeline.yml --load-vars-from params.yml
```
