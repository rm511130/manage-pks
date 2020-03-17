#!/bin/bash
# How to automate PKS DELETE-CLUSTER of multiple (5 in this example) PKS K8s Clusters on GCP
# Cluste names: user1-cluster, user2-cluster, ... user5-cluster

pks login -a https://api.pks.pks4u.com:9021 -u pks_admin -p password -k
for i in {1..25}; do pks delete-cluster "user$i-cluster" --non-interactive; done
