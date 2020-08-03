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

# Create Training Session

# To load the definition of the WORKSHOP, run:
kubectl apply -f https://raw.githubusercontent.com/eduk8s-labs/lab-k8s-fundamentals/master/resources/workshop.yaml && \


# Creating the workshop TRAINING PORTAL
kubectl apply -f https://raw.githubusercontent.com/eduk8s-labs/lab-k8s-fundamentals/master/resources/training-portal.yaml && \

# To create the workshop environment run: 
kubectl apply -f https://raw.githubusercontent.com/eduk8s-labs/lab-k8s-fundamentals/master/resources/workshop-environment.yaml && \

# **Load container basiscs**

# Load the workshop def, change to raw url of your repo to the workshop.yml
kubectl apply -f https://raw.githubusercontent.com/eduk8s-labs/lab-container-basics/master/resources/workshop.yaml

# Deploy a sample tarining portal, change to raw url of your repo training-portal.yaml
kubectl apply -f https://raw.githubusercontent.com/eduk8s-labs/lab-container-basics/master/resources/training-portal.yaml

    