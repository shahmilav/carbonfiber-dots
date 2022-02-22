#!/opt/homebrew/bin/zsh

# ---< JAVA >---
## java
alias jv="java"
alias jvc="javac"
## kotlin
alias kt="kotlin"
alias ktc="kotlinc"
## google-java-format
alias gjf="google-java-format"
function gjf-all() {
for i (**/*.java(D)) echo $i && google-java-format -i *;
}


## maven
alias mvnboot='mvn spring-boot:run'
alias mvnc='mvn clean'
alias mvncd='mvn clean deploy'
alias mvnce='mvn clean eclipse:clean eclipse:eclipse'
alias mvnci='mvn clean install'
alias mvncie='mvn clean install eclipse:eclipse'
alias mvncini='mvn clean initialize'
alias mvncist='mvn clean install -DskipTests'
alias mvncisto='mvn clean install -DskipTests --offline'
alias mvncom='mvn compile'
alias mvncp='mvn clean package'
alias mvnct='mvn clean test'
alias mvncv='mvn clean verify'
alias mvncvst='mvn clean verify -DskipTests'
alias mvnd='mvn deploy'
alias mvndocs='mvn dependency:resolve -Dclassifier=javadoc'
alias mvndt='mvn dependency:tree'
alias mvne='mvn eclipse:eclipse'
alias mvnfmt='mvn fmt:format'
alias mvnjetty='mvn jetty:run'
alias mvnp='mvn package'
alias mvnqdev='mvn quarkus:dev'
alias mvns='mvn site'
alias mvnsrc='mvn dependency:sources'
alias mvnt='mvn test'
alias mvntc='mvn tomcat:run'
alias mvntc7='mvn tomcat7:run'
alias mvn-updates='mvn versions:display-dependency-updates'
