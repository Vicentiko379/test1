pipeline {
//     environment {
//       QODANA_TOKEN=credentials('qodana-token')
//     }
    agent {
        docker {
            args '-v "${WORKSPACE}":/data/project'
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