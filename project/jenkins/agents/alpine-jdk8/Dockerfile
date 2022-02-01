FROM jenkins/ssh-agent:alpine
USER root
RUN wget https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_linux_amd64.zip && \
    ls -l terraform_1.1.3_linux_amd64.zip && \
    unzip terraform_1.1.3_linux_amd64.zip && \
    rm terraform_1.1.3_linux_amd64.zip && \
    mv terraform /usr/bin/terraform
RUN apk add git curl