pipeline {
   agent {
      docker {
          image "jetbrains/qodana-jvm-community"
          args ' --entrypoint="" -v "/qodana-reports:/data/results/ -v "/:/data/project/'
      }
   }
   stages {
       stage('Run') {
           steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                   sh "qodana --save-report"
                   echo "done!"
               }
           }
       }
   }
}