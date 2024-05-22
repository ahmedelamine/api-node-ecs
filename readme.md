# Api-node deployed in AWS ECS Fargte

1. Create Docker image
2. Push Docker image to Amazon ECR
   1. Create repository
   2. Tag image
   3. get-login-password
   4. push image
3. Create Cluster
4. Create a task definition
5. Create the service
6. View service
7. Create ECR repository
8. Create Cluster
9. Create Service
10. Setup github secrets
   * AWS_ACCESS_KEY_ID
   * AWS_SECRET_ACCESS_KEY
   * AWS_REGION (e.g., us-east-1)
   * ECR_REPOSITORY (e.g., my-app-repo)
   * ECS_CLUSTER (e.g., my-ecs-cluster)
   * ECS_SERVICE (e.g., my-ecs-service)