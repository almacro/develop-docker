FROM jenkins/ssh-agent:latest
USER root
ARG CLOUD_SDK_VERSION=370.0.0
ENV CLOUD_SDK_VERSION=$CLOUD_SDK_VERSION
ENV PATH /google-cloud-sdk/bin:$PATH
RUN apt-get -y update && \
    apt-get -y install \
    curl \
    gnupg2 \
    git \
    sudo \
    unzip && \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
    apt-get -y update && \
    apt-get install google-cloud-sdk -y
RUN gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud --version
RUN git config --system credential.'https://source.developers.google.com'.helper gcloud.sh
RUN echo 'jenkins    ALL=(ALL)        NOPASSWD: ALL' > /etc/sudoers.d/jenkins-sudo
VOLUME ["/root/.config"]