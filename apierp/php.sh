#!/bin/bash
if [ -z "$1" ]
  then
    echo "Argument: prefix projet"
else
  docker exec -it $1_nginx service php7.2-fpm start
fi



