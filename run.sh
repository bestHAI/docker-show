#!/bin/bash

docker run -itd --name nginx-show --restart always \
-v "/etc/localtime:/etc/localtime:ro" -v "$(pwd)/web:/home/web:ro" -v "$(pwd)/nginx:/etc/nginx/:ro" \
--user root --privileged=true --net host gaciaga/nginx-vts
