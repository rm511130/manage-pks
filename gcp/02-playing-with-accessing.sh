#!/bin/bash
# How to automate the access to multiple PKS K8s Clusters
# Cluster names: user1-cluster, user2-cluster, ... user5-cluster

for i in {1..5}; do echo "user$i-cluster" | ./manage-cluster access; done
