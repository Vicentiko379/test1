pipeline {
   agent {
      docker {
          image "jetbrains/qodana-jvm-community"
          args ' --entrypoint="" -v C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\qodana\\results:/data/results/ -v C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\qodana\\:/data/project/'
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