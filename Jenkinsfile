pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install -DskipTests'
                sh 'docker build -t hello:v1.0 .'
                sh 'sudo docker images'
            }
        }
    }
}
