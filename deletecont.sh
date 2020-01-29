#!/bin/bash
docker ps -a | grep Exited | awk '{print$1}' | while read LINE
do
  docker rm -f "$LINE"
done
