pipeline {
    agent any

    environment {
        DEPLOY_DIR = "/var/www/html"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/27239/Application.git'
            }
        }

        stage('Verify Files') {
            steps {
                echo "Current workspace: ${env.WORKSPACE}"
                sh 'pwd'
                sh 'ls -R'
            }
        }

        stage('Deploy HTML Files') {
            steps {
                echo "Deploying all HTML files to ${DEPLOY_DIR}..."
                // Find all .html files in the workspace and copy them to /var/www/html
                sh '''
                    for file in $(find . -name "*.html"); do
                        echo "Copying $file to ${DEPLOY_DIR}/$(basename $file)"
                        cp "$file" ${DEPLOY_DIR}/$(basename $file)
                    done
                '''
            }
        }
    }

    post {
        success {
            echo "All HTML files deployed successfully!"
        }
        failure {
            echo "Deployment failed. Check workspace and file paths!"
        }
    }
}
