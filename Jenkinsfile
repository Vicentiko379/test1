pipeline {
//     environment {
//       QODANA_TOKEN=credentials('qodana-token')
//     }
    agent {
        docker {
            args '''
                -v "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\pipeline docker\\":/data/project
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