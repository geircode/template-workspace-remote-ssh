#!/bin/sh

cd /app
docker build -f Dockerfile -t geircode/template_workspace_remote_ssh .
docker-compose -f docker-compose.yml up -d --build --remove-orphans
docker exec -it template_workspace_remote_ssh-1 /bin/bash
