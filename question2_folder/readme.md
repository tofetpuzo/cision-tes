## Command to run to create 
2.  Write a Kubernetes StatefulSet to run the above, using persistent volume claims and
resource limits.

`kubectl create -f namespace.yaml`
`kubectl create -f nginx-config.yaml`
`kubectl create -f persistance-volume.yaml`
`kubectl create -f persistance-volume-claim.yaml`
`kubectl create -f secret.yaml`
`kubectl create -f kubernetes-stateful.yaml`
`kubectl create -f headless-hostmachine-service.yaml`


### Access the image after building the Dockerfile

`http://$Node_IP:$Node_Port/myapp`


### Use below command to get the NodePort
`kubectl get svc | grep myapp-service`