pipeline {

    agent any

    parameters {
        string(
            name: 'REPO_URL',
            description: 'GitHub repository URL to deploy',
            trim: true
        )
    }

    stages {

        stage('Checkout Platform') {
            steps {
                checkout scm
            }
        }

        stage('Checkout Application') {
            steps {
                dir('application') {
                    git url: params.REPO_URL, branch:'main'
                }
            }
        }

        stage('Detect Application') {
            steps {
                sh '''
                    chmod +x scripts/detect-app.sh

                    cd application

                    ../scripts/detect-app.sh
                '''
            }
        }

        stage('Verify') {
            steps {
                sh '''
                    echo ""
                    echo "Platform:"
                    ls -la

                    echo ""
                    echo "Application:"
                    ls -la application
                '''
            }
        }
    }
}