#!/bin/bash
# How to automate PKS DELETE-CLUSTER of multiple (5 in this example) PKS K8s Clusters on GCP

for i in {1..5}; do pks delete-cluster "user$i-cluster" --non-interactive; done
