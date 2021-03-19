pipeline {
    agent any
    environment {
        DATABASE_URL = credentials("DATABASE_URI")
        SECRET_KEY = credentials("SECRET_KEY")
    }
    stages {
        stage('make scripts executable') {
            steps {
                sh chmod +x ./installations.sh
                sh chmod +x ./deployment.sh
            }
        }
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
                sh "./deployment.sh"
            }
        }
    }
}
