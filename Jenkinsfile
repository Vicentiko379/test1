pipeline {
//     environment {
//       QODANA_TOKEN=credentials('qodana-token')
//     }
//     agent {
//         docker {
//             args '-v "${WORKSPACE}":/data/project'
//             image 'jetbrains/qodana-jvm-community'
//         }
//     }
   stages {
        stage('Run') {
           agent {
               docker {
                   label 'docker'
                   image "jetbrains/qodana-${config.qodana_linter}"
                   args " --entrypoint='' -v $HOME/.m2/:/root/.m2/  -v ${env.WORKSPACE}/qodana-reports:/data/results/ -v ${env.WORKSPACE}:/data/project/"
               }
           }
           steps {
               sh "qodana --save-report${config.qodana_extra_args}"
           }
       }
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