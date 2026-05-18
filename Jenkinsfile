pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/27239/Application.git', credentialsId: 'http://localhost:8080/manage/credentials/store/system/domain/_/credential/1ed3405d-5461-4885-8929-99613f9bbc73'
            }
        }

        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo 'Website deployed successfully!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
