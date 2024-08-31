pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "leumi"
        K8S_NAMESPACE = "homework"
        DEPLOYMENT_NAME = "josh-deployment"
        SERVICE_NAME = "josh-service"
        CONTAINER_PORT = 443
        EXPOSED_PORT = 443
        KUBECONFIG = '/root/.kube/config'  // Path to kubeconfig file inside the container
        GITHUB_REPO = "https://github.com/jehoshu/Leumi-project.git"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: "${GITHUB_REPO}"
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'ls -la'

                // Build the Docker image using the Dockerfile from the repository
                sh 'docker build -t ${DOCKER_IMAGE} .'
            }
        }

        stage('Run Docker Image') {
            steps {
                // Run the Docker container
                sh 'docker run -d -p ${EXPOSED_PORT}:${CONTAINER_PORT} ${DOCKER_IMAGE}'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Apply Kubernetes deployment YAML
                    sh """
                    kubectl apply -f k8s-deployment.yaml --namespace=${K8S_NAMESPACE}
                    kubectl apply -f k8s-service.yaml --namespace=${K8S_NAMESPACE}
                    """
                }
            }
        }
    }

    post {
        always {
            script {
                // Clean up Docker images
                sh 'docker container prune -f'
                sh 'docker image prune -f'
            }
        }
    }
}
