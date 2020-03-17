#!/bin/bash
# How to automate the creation of multiple PKS K8s Clusters
# Cluster names will be: user1-cluster, user2-cluster, ... user5-cluster
# Each cluster is created by a different devops1, devops2, devops3... PKS Manager
# with scope to see only the cluster he/she is creating
# To see all clusters, you will need to use the pks_admin user

for i in {2..3}
do
   echo "Working on user devops$i to create user$i-cluster"
   pks login -a https://api.pks.pks4u.com:9021 -u devops$i -p password -k
   echo "user$i-cluster" > input-file.txt
   echo "small" >> input-file.txt
   echo "pks4u-zone" >> input-file.txt
   ./manage-cluster provision < ./input-file.txt 
   sleep 5
   echo "Finished working on user$i"
done
rm ./input-file.txt
pks login -a https://api.pks.pks4u.com:9021 -u pks_admin -p password -k

