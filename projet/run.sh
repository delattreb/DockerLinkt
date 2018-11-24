#!/bin/bash
if [ -z "$1" ]
  then
    echo "Argument: Nom du container"
else
  docker exec -it $1 /bin/bash
fi



