cd %~dp0
docker rm -f template_workspace_remote_ssh-builder-1
docker-compose -f docker-compose.yml down --remove-orphans
REM docker-compose -f docker-compose.yml build --no-cache
docker-compose -f docker-compose.yml up --build --remove-orphans
pause
docker exec -it template_workspace_remote_ssh-builder-1 /bin/bash
