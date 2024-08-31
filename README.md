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



