pipeline {
    agent any

    stages {
        stage('Build1') {
            steps {
                sh 'mvn clean install -DskipTests'
                sh 'docker build -t hello:v1.0 .'
                sh 'docker images'
            }
        }
    }
}
