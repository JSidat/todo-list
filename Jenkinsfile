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
              
                sh 'bash test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './deeployment.sh'
            }
        }
    }
}
