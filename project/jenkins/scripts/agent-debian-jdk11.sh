#!/bin/bash

docker run \
-d \
--rm \
--name=agent-debian-jdk11 \
--network jenkins \
-e "JENKINS_AGENT_SSH_PUBKEY=$(cat $HOME/.ssh/jenkins_agent_key.pub)" \
jenkins/ssh-agent:latest