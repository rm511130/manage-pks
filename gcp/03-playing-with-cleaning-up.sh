#!/bin/bash
# How to automate the clean-up of multiple (5 in this example) PKS K8s Clusters on GCP
# Cluste names: user1-cluster, userr2-cluster, ... user5-cluster

for i in {1..5}; do echo "user$i-cluster" | ./manage-cluster cleanup; done
