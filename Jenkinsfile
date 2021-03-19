pipeline {
    agent any
    stages {
        stage('Install-dependencies') {
            steps {
                sh "./installations.sh"
            }
        }
        stage('Test') {
            steps {
                sh "python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml"
            }
        }
        stage('Deploy') {
            steps {
                sh "./deploy.sh"
            }
        }
    }
}
