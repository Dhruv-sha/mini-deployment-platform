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

        stage('Checkout Application') {
            steps {
                echo "Cloning repository: ${params.REPO_URL}"

                git url: params.REPO_URL
            }
        }

        stage('Verify Repository') {
            steps {
                sh '''
                    echo "Repository cloned successfully"
                    echo ""
                    echo "Files in repository:"
                    ls -la
                '''
            }
        }
    }
}