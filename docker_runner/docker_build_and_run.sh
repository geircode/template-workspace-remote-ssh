#!/bin/sh

cd /app
docker build -f Dockerfile -t geircode/template-workspace-remote-ssh .
docker-compose -f docker-compose.yml up -d --build --remove-orphans
docker exec -it template-workspace-remote-ssh-1 /bin/bash
