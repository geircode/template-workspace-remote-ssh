cd %~dp0
docker rm -f template-workspace-remote-ssh-1
docker-compose -f docker-compose.yml down --remove-orphans
docker-compose -f docker-compose.yml pull
docker-compose -f docker-compose.yml up -d --remove-orphans
REM wait for 1-2 seconds for the container to start
pause
docker exec -it template-workspace-remote-ssh-1 /bin/bash