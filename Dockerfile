# Build image
# docker build -t jenkins:custom .

FROM jenkins/jenkins:lts

USER root

RUN apt update && \
    curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt install nodejs -y && \
    npm install -g aws-cdk

USER jenkins
