# Get started with Minikube
```
minikube start
```

# Check kubectl 
```
kubectl version --client
```
# Set Context for Cluster in different cloud providers
### Connect to EKS
aws eks --region <region> update-kubeconfig --name <cluster-name
### Connect to AKS
az aks get-credentials --resource-group <resource-group> --name 
### Connect to GKE
gcloud container clusters get-credentials <cluster-name> --regio

Kubernetes Deployment: 
https://kubernetes.io/docs/concepts/workloads/controllers/deployment
```
# Create a Deployment using Manifest file
kubectl apply -f deployment.yaml

# Delete an object using Manifest file
kubectl delete -f deployment.yaml

# Edit a Deployment using Manifest file
kubectl apply -f deployment.yaml
```
# GET Commands (Status)
```
# Get commands to check the status
kubectl get pods

kubectl get services

kubectl get deployments
```
# Different Options with GET Commands
```
# Get information in YAML format
kubectl get pods -o yaml

# Get information in JSON format
kubectl get services -o json
```
# Kubectl Describe
```
# Describe a resource
kubectl describe pod <pod-name>
```
# Imperative Commands
Explanation: Imperative commands allow quick actions without the need for manifest
files. 
https://kubernetes.io/docs/tasks/manage-kubernetes-objects/imperative-command/
```
# Create a Deployment imperatively
kubectl create deployment redis-deploy --image=redis --replicas
```
# Kubectl Create Commands
```
# Create a Deployment with Redis image and 2 replicas
kubectl create deployment redis-deploy --image=redis --replicas=2

# Create an Nginx Deployment
kubectl create deployment nginx-deploy --image=nginx
```