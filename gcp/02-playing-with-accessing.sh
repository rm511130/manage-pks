#!/bin/bash
# How to automate the access to multiple PKS K8s Clusters
# Cluster names: user1-cluster, user2-cluster, ... user5-cluster
# Using differeny devops1, devops2, ... cluster owners with management scope
# respectively

for i in {1..2}
do 
	pks login -a https://api.pks.pks4u.com:9021 -u devops$i -p password -k
	echo "user$i-cluster" | ./manage-cluster access
done
