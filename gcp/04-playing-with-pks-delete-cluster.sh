#!/bin/bash
# How to automate PKS DELETE-CLUSTER of multiple (5 in this example) PKS K8s Clusters on GCP
# Cluste names: user1-cluster, userr2-cluster, ... user5-cluster

for i in {1..5}; do pks delete-cluster "user$i-cluster" --non-interactive; done
