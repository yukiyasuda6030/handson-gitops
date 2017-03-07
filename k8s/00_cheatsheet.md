# cheat sheet

## dash board
minikube dashboard

## k8s manifestfiles
https://github.com/tbuchi888/demo-js-nginx-docker-k8s.git

## k8s manifestfiles git clone
git clone https://github.com/tbuchi888/demo-js-nginx-docker-k8s.git

cd demo-js-nginx-docker-k8s

## create service
kubectl create -f k8s/sv.yml

kubectl describe svc

## create deployment
kubectl create -f k8s/bl.yml 

kubectl create -f k8s/gr.yml 

kubectl describe deployment

## get pods
kubectl get pods

## get URL on minikube
minikube service nginxjsdemo --url

## broweser

## dashboard

## edit deployment green replicas: 4->8
kubectl edit deployment green

kubectl get pods

## edit deployment color=blue->green
kubectl edit svc nginxjsdemo

kubectl describe svc

## dashboard

## broweser
