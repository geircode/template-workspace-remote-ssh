#!/bin/sh

cat /run/secrets/dockerloginpassword | docker login --username geircode --password-stdin
cd /app
docker build -f Dockerfile -t geircode/template_workspace_remote_ssh:latest .
docker push geircode/template_workspace_remote_ssh:latest