pipeline {
   agent any
   stages {
       stage('Build Image') {
            agent {
               docker {
                   image "jetbrains/qodana-jvm-community"
                   args ' --entrypoint="" -v "${WORKSPACE}"/qodana-reports:/data/results/ -v "${WORKSPACE}":/data/project/'
               }
            }
            steps {
                 catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh "qodana --save-report"
                    echo "done!"
                }
            }
       }
   }
}