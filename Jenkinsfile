pipeline {
   agent {
      docker {
          image "jetbrains\\qodana-jvm-community"
          args ' --entrypoint="" -v C:\\ECS\\Code\\qodana-docker\\qodana-reports\\:\\data\\results\\ -v C:\\ECS\\Code\\qodana-docker\\:\\data\\project\\'
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