cd %~dp0
docker rm -f template-workspace-remote-ssh-runner-1
docker-compose -f docker-compose.yml down --remove-orphans
docker-compose -f docker-compose.yml up --build --remove-orphans
pause
docker exec -it template-workspace-remote-ssh-runner-1 /bin/bash
