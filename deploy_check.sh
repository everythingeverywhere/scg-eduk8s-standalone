



echo workshop definition  ::
# List the workshop definition
kubectl get workshops

echo Training portal resource ::
# Get resource for training portal
kubectl get eduk8s-training -o name

echo WORKSHOP_SESH ::
# You can see a list of the workshop instances which were created, and access details by running:
kubectl get workshopsessions

echo trainingportals ::
# To access the workshops, attendees of a training session need to visit the web based portal for the training session. The URL for the web portal can be found by running:

kubectl get trainingportals