cd %~dp0

call filecontainer\docker-compose.build.bat

REM Build within a Linux Container to get the CR/LF line endings to be correct when building the Linux Container Image
call docker_image_builder\docker-compose.linux.build.bat

cd %~dp0
docker-compose -f docker-compose.yml up -d
docker exec -it template_workspace_remote_ssh-1 /bin/bash