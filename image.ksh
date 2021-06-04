#!/bin/bash

docker image ls | grep "doc_hub" > image.txt 
b=$(awk '{print $3}' image.txt)
docker tag $b priyanka123459/project2_devops:doc_hub_image
docker image push priyanka123459/project2_devops:doc_hub_image
