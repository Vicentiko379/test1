pipeline {
   agent {
      docker {
          image "jetbrains/qodana-jvm-community"
          args ' --entrypoint="" -v "${WORKSPACE}"/qodana-reports:/data/results/ -v "${WORKSPACE}":/data/project/'
      }
   }
   stages {
       stage('Run') {
           steps {
               bat(/"qodana --save-report")
               echo "done!"
           }
       }
   }
}