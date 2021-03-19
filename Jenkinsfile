pipeline {
    agent any
    environment {
        DATABASE_URL = credentials("DATABASE_URI")
        SECRET_KEY = credentials("SECRET_KEY")
    }
    stages {
        stage('make scripts executable') {
            steps {
                sh 'chmod +x installations.sh'
                sh 'chmod +x deeployment.sh'
            }
        }
        stage('Install-dependencies') {
            steps {
                sh 'bash installations.sh'
            }
        }
        stage('Test') {
            steps {
              
                sh 'source venv/bin/activate && python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml'
            }
        }
        stage('Deploy') {
            steps {
                sh 'deeployment.sh'
            }
        }
    }
}
