#!/bin/bash

docker run \
-d \
--rm \
--name=agent-debian-gcloud \
--network jenkins \
-e "JENKINS_AGENT_SSH_PUBKEY=$(cat $HOME/.ssh/jenkins_agent_key.pub)" \
alfred-thompson/jenkins-ssh-agent:gcloud