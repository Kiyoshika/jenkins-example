pipeline {
    agent {
        dockerfile true
    }
    
    stages {
        stage('Build') {
            steps {
                sh 'rm -rf build || true'
                sh 'mkdir build && cd build && cmake .. && make'
            }
        }
        stage('Test') {
            steps {
                sh 'cd build && make test'
            }
        }
        stage('Deploy') {
            when {
                expression {
                    currentBuild.result == null || currentBuild.result == 'SUCCESS'
                }
            }
            steps {
                echo 'Deploying...'
            }
        }
    }
}
