cd %~dp0
docker-compose -f filecontainer/docker-compose.yml build
docker-compose -f docker-compose.yml up -d --build --remove-orphans
pause
docker exec -it template_workspace_remote_ssh-1 /bin/bash