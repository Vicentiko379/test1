pipeline {
//     environment {
//       QODANA_TOKEN=credentials('qodana-token')
//     }
    agent {
        docker {
            args '''
                -v "-v $HOME/.m2/:/root/.m2/ 
                -v ${env.WORKSPACE}/qodana-reports:/data/results/ 
                -v ${env.WORKSPACE}:/data/project/
                --entrypoint=""
                '''
            image 'jetbrains/qodana-jvm-community'
        }
   }
   stages {
        stage('Qodana') {
            steps {
                sh '''
                qodana \
                --fail-threshold 10
                '''
            }
        }
   }
}