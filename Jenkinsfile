pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install -DskipTests'
                sh 'sudo docker build -t hello:v1.0 .'
            }
        }
        stage('PushImage') {
            steps {
                sh 'docker tag hello:v1.0 47.115.1.158/harbor/hello:v1.0'
                sh 'sudo docker push 47.115.1.158/harbor/hello:v1.0'
            }
        }
    }
}
