pipeline {
   agent any
   stages {
       stage('Build Image') {
            agent {
               docker {
                   image "jetbrains/qodana-jvm-community"
                   args '-it -u 0 --entrypoint="" -v "${WORKSPACE}"/qodana-reports:/data/results/ -v "${WORKSPACE}":/data/project/'
               }
            }
            steps {
                 catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
//                     sh "sudo qodana --save-report"
                    echo "done!"
                }
            }
       }
   }
}