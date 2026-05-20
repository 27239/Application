pipeline {
    agent any

    environment {
        DEPLOY_DIR = "/var/www/html"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub
                git branch: 'main', url: 'https://github.com/27239/Application.git'
            }
        }

        stage('Verify Files') {
            steps {
                echo "Current workspace: ${env.WORKSPACE}"
                // List all files recursively to find h1.html
                sh 'pwd'
                sh 'ls -R'
            }
        }

        stage('Deploy HTML') {
            steps {
                // Replace with the correct relative path of h1.html from the workspace
                // Example: if h1.html is directly in repo root:
                sh "cp index.html ${DEPLOY_DIR}/index.html"
                // If h1.html is inside a folder, for example 'Application/h1.html':
                // sh "cp Application/h1.html ${DEPLOY_DIR}/index.html"
            }
        }
    }

    post {
        success {
            echo "HTML deployed successfully to ${DEPLOY_DIR}"
        }
        failure {
            echo "Deployment failed. Check workspace and file paths!"
        }
    }
}
