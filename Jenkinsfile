pipeline {
   agent {
      docker {
          label "qodana"
          image "jetbrains/qodana-jvm-community"
          args ' --entrypoint="" -v "${WORKSPACE}"/qodana-reports:/data/results/ -v "${WORKSPACE}":/data/project/'
      }
   }
   stages {
       stage('Run') {
           steps {
               sh "qodana --save-report"
               echo "done!"
           }
       }
   }
}