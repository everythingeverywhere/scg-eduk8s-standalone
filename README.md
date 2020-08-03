# local-eduk8s
You can use the bash scripts in the local-eduk8s repo to install eduk8s locally on minikube.

Clone the GitHub repo:

```copy
git clone https://github.com/everythingeverywhere/local-eduk8s.git
```

> To load more workshops into eduk8s append `kubectl apply -f` refering to the path of the `resources/training-portal.yml` and `resources/workshop.yml` in the script. You can follow the example within the script.

Deploy the minkube cluster and eduk8s with the script `deploy.sh` :

```copy
cd ./local-eduks8 && ./deploy.sh
```

You can check eduk8s and retrieve the training session and password with:

```copy
./deploy_check.sh
```

To get the URL and password without all the other info from `deploy_check.sh`, simply enter:

```copy
kubectl get trainingportals
```


Delete the cluster and eduk8s

```copy
./delete.sh
```

