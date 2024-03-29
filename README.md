# CloudDevops-03
Cloud DevOps Engineer Nanodegree - 03 Movie Picture Pipeline

## Documentation

### Getting Started
Prerequisites:
- [AWS CLI](https://aws.amazon.com/cli/) - Amazon command line interface
- [eksctl](https://eksctl.io/) - Official cli for Amazon EKS
- [kubectl](https://kubernetes.io/docs/reference/kubectl/) - CLI to interact with Kubernetes API
- [helm](https://helm.sh/) - Package Manager for Kubernetes

Note:
- Creating a cluster using eksctl
  - `eksctl create cluster --name my-cluster --version 1.29 --region us-west-2 --nodegroup-name my-nodes --node-type t3.small --nodes 1 --nodes-min 1 --nodes-max 2`
- Configure kubectl config to EKS cluster
  - `aws eks --region us-west-2 update-kubeconfig --name my-cluster`


#### Deploying Postgre DB
##### Manual deployments 
```
kubectl apply -f postgresql-pvc.yaml
kubectl apply -f postgresql-pv.yaml
kubectl apply -f postgresql-deployment.yaml
kubectl apply -f postgresql-service.yaml
```
##### Using Helm Charts to setup PostgreSQL (Recommended)
```
helm install postgresql oci://registry-1.docker.io/bitnamicharts/postgresql
```

#### Deploy coworking application
```
kubectl apply -f coworking-config-map.yml
kubectl apply -f coworking-secret.yml
kubectl apply -f coworking-deployment.yml
```
## Screenshots
### Docker images pushed to ECR
### AWS CodeBuild Pipeline
- Build process was triggered automatically
![](/screenshots/Build%20process%20was%20triggered%20automatically.png)
- Pushed a built Docker image to ECR
![](/screenshots/Pushed%20a%20built%20Docker%20image%20to%20ECR.png)

### Kubernetes Configuration
- `kubectl get svc` shows newly-created service
![](/screenshots/kubectl%20get%20svc.png)
- `kubectl describe deployment coworking`
![](/screenshots/kubectl%20describe%20deployment%20coworking%20.png)
- `kubectl get pods`
![](/screenshots/kubectl%20get%20pods%20.png)
- `kubectl describe svc postgresql-service`
![](/screenshots/kubectl%20describe%20svc%20postgresql-service.png)

### CloudWatch logs
- EKS application logs
![](/screenshots/Cloud%20watch%20eks%20application%20log.png)
![](/screenshots/Cloud%20watch%20eks%20application%20success%20log.png)
- CloudBuild Logs
![](/screenshots/CloudWatch%20cloudbuild%20logs.png)