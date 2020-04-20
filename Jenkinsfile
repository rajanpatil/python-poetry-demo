pipeline {

    agent any

    options {
		ansiColor('xterm')
	}

    stages {
        stage('Initialize and Configure'){
            steps {
                git(branch: "${env.BRANCH_NAME}", url: "${GIT_URL}")
            }
        }

        stage('Install Dependencies') {
            steps {
                    sh "poetry install"
                }
            }
        }

        stage('Check Code Style and Formatting') {
            steps {
                sh 'poetry run black --check .'
                sh 'poetry run mypy .'
                sh 'poetry run flake8'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'poetry run pytest'
            }
        }

        stage('Build') {
            steps {
                sh 'poetry build --format=wheel'
            }
        }
    }
}
