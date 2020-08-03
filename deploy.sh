# Create local cluster
minikube start --cpus 4 --memory 8192 --kubernetes-version=v1.17.8 && \

# Enable the NGINX Ingress controller
minikube addons enable ingress && \

# Retrieve local ip for ingress_domain
MINIKUBE_IP=$(minikube ip) && \

# Deploying the eduk8s operator
kubectl apply -k "github.com/eduk8s/eduk8s?ref=master" && \

# Specifying the ingress domain
# Running locally and you don’t have a custom domain name which maps to the IP for the cluster, you can use a nip.io address
kubectl set env deployment/eduk8s-operator -n eduk8s INGRESS_DOMAIN=${MINIKUBE_IP}.nip.io && \

## Create Training Session ##

# Load the workshop def, change to raw url of your repo to the workshop.yml
kubectl apply -f  https://github.com/everythingeverywhere/lab-spring-gateway/raw/master/resources/workshop.yaml && \

# Deploy a sample tarining portal, change to raw url of your repo training-portal.yaml

kubectl apply -f  https://raw.githubusercontent.com/everythingeverywhere/lab-spring-gateway/master/resources/training-portal.yaml

