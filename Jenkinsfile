pipeline {
   agent {
      docker {
          label 'docker'
          image "jetbrains/qodana-jvm-community"
          args ' --entrypoint='' -v "${WORKSPACE}"/qodana-reports:/data/results/ -v "${WORKSPACE}":/data/project/'
      }
   }
   stages {
       stage('Run') {
           steps {
               sh "qodana --save-report${config.qodana_extra_args}"
           }
       }
   }
}