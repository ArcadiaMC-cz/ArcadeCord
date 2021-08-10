<div align="center">

# ArcadeCord
![forthebadge](https://forthebadge.com/images/badges/made-with-java.svg)
![forthebadge](https://forthebadge.com/images/badges/powered-by-black-magic.svg)

ArcadeCord is patch for [Waterfall](https://github.com/PaperMC/Waterfall) with many features for ArcadiaMC network.

</div>

## Downloads
![build](https://ci.arcadiamc.cz/buildStatus/icon?job=arcadecord%2Fmain)

### Proxy
[ArcadeCord](https://ci.arcadiamc.cz/job/arcadecord/job/main/lastSuccessfulBuild/artifact/ArcadeCord-Proxy/bootstrap/target/ArcadeCord.jar)

### Modules
* [cmd_alert](https://ci.arcadiamc.cz/job/arcadecord/job/main/lastSuccessfulBuild/artifact/ArcadeCord-Proxy/module/cmd-alert/target/cmd_alert.jar)
* [cmd_find](https://ci.arcadiamc.cz/job/arcadecord/job/main/lastSuccessfulBuild/artifact/ArcadeCord-Proxy/module/cmd-find/target/cmd_find.jar)
* [cmd_list](https://ci.arcadiamc.cz/job/arcadecord/job/main/lastSuccessfulBuild/artifact/ArcadeCord-Proxy/module/cmd-list/target/cmd_list.jar)
* [cmd_send](https://ci.arcadiamc.cz/job/arcadecord/job/main/lastSuccessfulBuild/artifact/ArcadeCord-Proxy/module/cmd-send/target/cmd_send.jar)
* [cmd_server](https://ci.arcadiamc.cz/job/arcadecord/job/main/lastSuccessfulBuild/artifact/ArcadeCord-Proxy/module/cmd-server/target/cmd_server.jar)
* [reconnect_yaml](https://ci.arcadiamc.cz/job/arcadecord/job/main/lastSuccessfulBuild/artifact/ArcadeCord-Proxy/module/reconnect-yaml/target/reconnect_yaml.jar)


## API

### [Javadoc](https://ci.arcadiamc.cz/job/arcadecord/javadoc)

### Dependency Information
Maven
```xml
<repository>
    <id>arcadiamc</id>
    <url>https://nexus.arcadiamc.cz/repository/maven-public/</url>
</repository>
```
```xml
<dependency>
    <groupId>cz.arcadiamc</groupId>
    <artifactId>arcadecord-api</artifactId>
    <version>1.17-R0.1-SNAPSHOT</version>
    <scope>provided</scope>
</dependency>
```

Gradle
```groovy
repositories {
  maven {
      url 'https://nexus.arcadiamc.cz/repository/maven-public/'
  }
}
```
```groovy
dependencies {
    compileOnly 'cz.arcadiamc:arcadecord-api:1.17-R0.1-SNAPSHOT'
}
```

This also includes all API provided by Waterfall and BungeeCord.

## Building and setting up

#### Initial setup
Run the following commands in the root directory:

```shell
./arcadecord build
```

#### Creating a patch
Patches are effectively just commits in `ArcadeCord-Proxy`.
To create one, just add a commit to either repo and run `./arcadecord rebuild`, and a
patch will be placed in the patches folder. Modifying commits will also modify its
corresponding patch file.

#### Compiling

Use the command `./arcadecord build` to build the proxy. ArcadeCord jar
will be placed under `ArcadeCord-Proxy/bootstrap/target/ArcadeCord.jar`.
