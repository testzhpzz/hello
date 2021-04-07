pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install -DskipTests'
                // 利用dockerfile生成容器镜像，dockerfile就在当前项目根目录下
                sh 'sudo docker build -t hello:latest .'
            }
        }
        stage('PushImage') {
            steps {
//                一定要加端口号
                //打tag
                sh 'sudo docker tag hello:latest 47.115.1.158:80/harbor/hello:latest'
                //将镜像推送到harbor私有库
                sh 'sudo docker push 47.115.1.158:80/harbor/hello:latest'
                //删除本地的容器镜像
                sh '''sudo docker rmi hello:latest
                      sudo docker 47.115.1.158:80/harbor/hello:latest
                   '''
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo sh /opt/Start.sh'
            }
        }
    }
}
