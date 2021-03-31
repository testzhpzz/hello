pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install -DskipTests'
                sh 'sudo docker build -t hello:latest .'
            }
        }
        stage('PushImage') {
            steps {
//                一定要加端口号12
                sh 'sudo docker tag hello:v1.0 47.115.1.158:80/harbor/hello:latest'
                sh 'sudo docker push 47.115.1.158:80/harbor/hello:latest'
                sh 'sudo docker rmi 47.115.1.158:80/harbor/hello:latest'
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo sh /opt/Deploy.sh'
            }
        }
    }
}
