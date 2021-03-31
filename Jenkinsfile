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
                sh 'sudo docker tag hello:v1.0 47.115.1.158:80/harbor/hello:latest'
                sh 'sudo docker push 47.115.1.158:80/harbor/hello:latest'
                sh 'sudo docker rmi 47.115.1.158:80/harbor/hello:latest'
            }
        }
        stage('Deploy') {
            steps {
                sh 'ssh root@8.135.143.103'
                sh 'docker pull 47.115.1.158:80/harbor/hello:latest'
                sh 'docker run 47.115.1.158:80/harbor/hello:latest'
                sh 'docker rmi 47.115.1.158:80/harbor/hello:latest'
            }
        }
    }
}
