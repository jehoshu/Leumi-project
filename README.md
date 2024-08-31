# Leumi-project

To create a Jenkins declarative pipeline that builds a Python-based application wrapped in Docker, deploys it to a Kubernetes (k8s) cluster, and exposes it on port 443, here is a step-by-step guide along with the 
prerequisites:

Jenkins Server:

Jenkins installed and running.
Jenkins configured with necessary plugins: Docker, Kubernetes, GitHub, and Pipeline.

Docker Setup:

Docker installed on the Jenkins server.
Docker daemon running and accessible by Jenkins.

Kubernetes Cluster:

Access to a Kubernetes cluster 
kubectl configured on the Jenkins server and authenticated to the cluster.
Namespace created (if using specific namespaces).

Python Application:

A Python application with a Dockerfile for containerization.
The application should be ready to build and run inside a Docker container.

GitHub Repository:

A GitHub repository where the code (including the Jenkinsfile) will be stored.
Jenkins configured with access to this GitHub repository.


Steps

1. Create a GitHub Repository

Create a new repository on GitHub.
Create a Python application along with the Dockerfile to this repository.
Create deployment and service K8s file to this repository
Create a Jenkinsfile in the root of this repository for the declarative pipeline.

2. Create the Jenkins Pipeline that do:
   
   Checkout Repository: Checkout the GitHub repository.(can change it to clone if need)
   Build Docker Image: Builds the Docker image from the Dockerfile.
   Deploy to Kubernetes: Creates a Kubernetes deployment and service from the Docker image.
   Expose Service: Exposes the service on port 443.

Verify Deployment

After the pipeline runs successfully, verify the deployment:

Check the Kubernetes cluster using kubectl get pods -n homework to ensure the pods are running.
Use kubectl get services -n homework to check the external IP address assigned to the service.
Access the Python application using the external IP over HTTPS.
