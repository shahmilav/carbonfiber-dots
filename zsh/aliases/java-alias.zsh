#!/opt/homebrew/bin/zsh

# ---< JAVA >---
## java
alias jv="java"
alias jvc="javac"
## kotlin
alias kt="kotlin"
alias ktc="kotlinc"
## maven
alias mc="mvn clean"
alias mcc="mvn clean compile"
alias mvnrn="mvn clean compile && mvn spring-boot:run"
## google-java-format
alias gjf="google-java-format"
function gjf-all() {
for i (**/*.java(D)) echo $i && google-java-format -i *;
}
