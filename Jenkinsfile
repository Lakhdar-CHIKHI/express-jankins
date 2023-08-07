pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage('Hello') {
      steps {
        echo 'Hello LAkhdar this is the first jenkins pipeline'
      }
    }
  }
}