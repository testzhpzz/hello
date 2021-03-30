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
//                一定要加端口号
                sh 'sudo docker tag hello:v1.0 47.115.1.158:80/harbor/hello:v1.0'
                sh 'sudo docker push 47.115.1.158:80/harbor/hello:v1.0'
                sh 'docker rmi 47.115.1.158:80/harbor/hello:v1.0'
            }
        }
    }
}
