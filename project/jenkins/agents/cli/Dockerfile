FROM jenkins/ssh-agent:alpine

ENV JENKINS_URL=""
ENV PRIVATE_KEY=""
ENV JENKINS_USER_ID=""
ENV JENKINS_API_TOKEN=""

VOLUME /ssh

RUN apk add git curl

WORKDIR /jenkins-cli
COPY jenkins-cli-wrapper.sh .

ENTRYPOINT [ "./jenkins-cli-wrapper.sh" ]
CMD ["help"]
