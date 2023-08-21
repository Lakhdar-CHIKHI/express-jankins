pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage('Hello') {
      steps {
        echo 'Hello LAkhdar this is the first jenkins pipeline -Master-'
      }
    }
    stage('Hello for Pre-prod branch') {
        when {
            branch 'pre-prod'
        }
        steps {
            echo 'Hello LAkhdar this is the first jenkins pipeline for the pre-prod branch'
        }
    }
    stage('Hello for pull request') {
        when {
            branch 'PR-*'
        }
        steps {
            echo 'Hello LAkhdar this is the first jenkins pipeline for the pull request'
        }
    }
  }
}