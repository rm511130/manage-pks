#!/bin/bash
# How to automate the creation of multiple PKS K8s Clusters
# Cluster names will be: user1-cluster, user2-cluster, ... user5-cluster

for i in {1..5}
do
   echo "Working on user$i"
   echo "user$i-cluster" > input-file.txt
   echo "small" >> input-file.txt
   echo "pks4u-zone" >> input-file.txt
   ./manage-cluster provision < ./input-file.txt 
   echo "Finished working on user$i"
done
rm ./input-file.txt
