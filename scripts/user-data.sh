#!/usr/bin/env bash
minnaker_url="https://github.com/armory/minnaker/archive/v0.1.2.tar.gz"

#Download most recent spinnaker minnaker installation
curl -L $minnaker_url | tar -zxv

#Navigate and install 
cd minnaker-0.1.* && bash scripts/install.sh

#wait for all the pods to come alive
sleep 5m # Waits 5 minutes.

#Check credentials
spin_endpoint