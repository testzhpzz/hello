pipeline {
    agent any

    stages {
        stage('Build1') {
            steps {
                sh 'mvn clean install -DskipTests'
                sh 'sudo docker build -t hello:v1.0 .'
                sh 'sudo docker images'
            }
        }
    }
}
