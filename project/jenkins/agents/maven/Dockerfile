FROM jenkins/ssh-agent:alpine
USER root
RUN wget https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_linux_amd64.zip && \
     unzip terraform_1.1.3_linux_amd64.zip && rm terraform_1.1.3_linux_amd64.zip && \
     mv terraform /usr/bin/terraform
RUN apk add git curl
RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz && \
    tar -C /opt -xpzf apache-maven-3.8.4-bin.tar.gz