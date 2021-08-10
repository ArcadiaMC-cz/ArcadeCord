pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh './arcadecord build'
      }
    }

    stage('Deployment') {
      parallel {
        stage('Artifact') {
          steps {
            archiveArtifacts 'ArcadeCord-Proxy/bootstrap/target/ArcadeCord.jar'
          }
        }

        stage('Repository') {
          steps {
            configFileProvider([configFile(fileId: 'maven-settings', variable: 'MAVEN_SETTINGS_XML')]) {
              sh 'mvn -Dmaven.test.skip=true -s $MAVEN_SETTINGS_XML -f ArcadeCord-Proxy deploy'
            }
          }
        }
      }
    }

    stage('Javadoc') {
      steps {
        sh 'mvn -Dmaven.test.skip=true -s $MAVEN_SETTINGS_XML -f ArcadeCord-Proxy javadoc:javadoc'
      }
    }
  }
}