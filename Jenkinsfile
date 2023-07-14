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
                echo "done!"
//                sh "qodana --save-report"
           }
       }
   }
}