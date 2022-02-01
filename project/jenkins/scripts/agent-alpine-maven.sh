#!/bin/bash

docker run \
  -d \
  --rm \
  --name agent-alpine-maven \
  --network jenkins \
  -e "JENKINS_AGENT_SSH_PUBKEY=$(cat $HOME/.ssh/jenkins_agent_key.pub)" \
  alfred-thompson/jenkins-ssh-agent:alpine-mvn