pipeline {
   agent {
      docker {
          image "jetbrains/qodana-jvm-community"
          args ' --entrypoint="" -v "${WORKSPACE}"/qodana-reports:/data/results/ -v "${WORKSPACE}":/data/project/'
      }
   }
   stages {
       stage('Run') {
           catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
               steps {
                   sh "qodana --save-report"
                   echo "done!"
               }
           }
       }
   }
}