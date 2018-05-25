#!/bin/bash
if [ -z "$1" ]
  then
    echo "Argument: Nom du container"
else
  docker stop $1
fi



