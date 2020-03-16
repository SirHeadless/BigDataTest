#!/bin/bash

# generate ssh key
echo "Y" | ssh-keygen -t rsa -P "" -f configs/id_rsa

# Hadoop build
docker build -f ./hadoop/Dockerfile . -t hadoop

# Spark
docker build -f ./spark/Dockerfile . -t spark

# PostgreSQL Hive Metastore Server
docker build -f ./postgresql-hms/Dockerfile . -t postgresql-hms

# Hive
docker build -f ./hive/Dockerfile . -t hive

# SSHD container 
docker build -f ./sshd/Dockerfile . -t sshd

# Jenkins container
docker build -f ./jenkins/Dockerfile . -t jenkins 

# Because the lify Dockerfile uses a entrypoiint.sh we have to cd into the folder. In the Dockerfile the reference points into the same folder as the dockerfile
# (Note tested yet 2.2.2020)
cd ./livy
docker build -f ./Dockerfile . -t livy 
