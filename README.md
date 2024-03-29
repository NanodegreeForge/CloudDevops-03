# CloudDevops-03
Cloud DevOps Engineer Nanodegree - 03 Movie Picture Pipeline

### Screenshots
#### Docker images pushed to ECR

#### AWS CodeBuild Pipeline
- Build process was triggered automatically
![](/screenshots/Build%20process%20was%20triggered%20automatically.png)
- Pushed a built Docker image to ECR
![](/screenshots/Pushed%20a%20built%20Docker%20image%20to%20ECR.png)

#### Kubernetes Configuration
- `kubectl get svc` shows newly-created service
- `kubectl describe deployment <SERVICE_NAME>`
- `kubectl get pods`
- `kubectl describe svc <DATABASE_SERVICE_NAME>`