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
            archiveArtifacts 'ArcadeCord-Proxy/module/cmd-alert/target/cmd_alert.jar'
            archiveArtifacts 'ArcadeCord-Proxy/module/cmd-find/target/cmd_find.jar'
            archiveArtifacts 'ArcadeCord-Proxy/module/cmd-list/target/cmd_list.jar'
            archiveArtifacts 'ArcadeCord-Proxy/module/cmd-send/target/cmd_send.jar'
            archiveArtifacts 'ArcadeCord-Proxy/module/cmd-server/target/cmd_server.jar'
            archiveArtifacts 'ArcadeCord-Proxy/module/reconnect-yaml/target/reconnect_yaml.jar'
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
        sh 'mvn -Dmaven.test.skip=true -f ArcadeCord-Proxy javadoc:javadoc'
        javadoc(javadocDir: 'ArcadeCord-Proxy/api/target/site/apidocs', keepAll: true)
      }
    }

  }
}