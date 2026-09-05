pipeline {
    agent any

    parameters {
        string(
            name: 'REPO_URL',
            defaultValue: 'https://github.com/Dhruv-sha/nodejs-application-deploy-github-actions.git',
            description: 'GitHub repository URL to deploy',
            trim: true
        )
    }

    stages {
        stage('Checkout Application') {
            steps {
                echo "Cloning repository: ${params.REPO_URL}"
                
                // Explicitly specify branch: 'main'
                git url: params.REPO_URL, branch: 'main'
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