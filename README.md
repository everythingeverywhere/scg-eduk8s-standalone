# scg-eduk8s-standalone

An [eduk8s](https://docs.eduk8s.io/en/latest/project-details/project-overview.html) workshop on getting started with Spring Cloud Gateway that using [local-eduk8s](https://github.com/everythingeverywhere/local-eduk8s) repo to install eduk8s locally on minikube for testing purposes.

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

