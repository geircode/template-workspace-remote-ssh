#!/bin/sh

cat /run/secrets/dockerloginpassword | docker login --username geircode --password-stdin
cd /app
docker build -f Dockerfile -t geircode/template-workspace-remote-ssh:latest .
docker push geircode/template-workspace-remote-ssh:latest