pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Verify Repository') {
            steps {
                sh '''
                    echo "Repository cloned successfully"
                    echo "Files in workspace:"
                    ls -la
                '''
            }
        }
    }
}