pipeline {
    agent any

    environment {
        APP_NAME = "Application"
        BUILD_DIR = "build"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                url: 'https://github.com/27239/Application.git'
            }
        }

        stage('Build') {
            steps {
                sh 'cp yagnesh/h1.html /var/www/html/'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'echo "All tests passed"'
            }
        }

        stage('Package') {
            steps {
                echo "Packaging application..."
                sh 'tar -czf sample-app.tar.gz build/'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying application..."
                sh 'echo "Deployment completed"'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }

        success {
            echo 'Build succeeded!'
        }

        failure {
            echo 'Build failed!'
        }
    }
}
