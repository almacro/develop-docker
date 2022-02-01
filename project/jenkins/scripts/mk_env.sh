#!/bin/bash
# create docker-compose .env file
rm -f ./.env
FOO=$(cat $HOME/.ssh/jenkins_agent_key.pub)
printf "%s=\"%s\"\n" "SSH_PUBKEY" "$FOO" > .env