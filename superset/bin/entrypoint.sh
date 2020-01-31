#!/bin/bash

myuid=$(id -u)
mygid=$(id -g)

# If there is no passwd entry for the container UID, attempt to create one
echo "$myuid:x:$myuid:$mygid:anonymous uid:/opt/app-root/src:/bin/bash" >> /etc/passwd

gunicorn superset:app
