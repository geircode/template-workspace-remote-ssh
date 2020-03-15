cd %~dp0
start cmd /C MakeDockerSecretsFolder.bat
docker rm -f template-workspace-remote-ssh_secrets-1
docker-compose -f docker-compose.dockersecrets.yml down --remove-orphans
docker-compose -f docker-compose.dockersecrets.yml up --build --remove-orphans
pause
start "" ..\..\DockerSecrets\template-workspace-remote-ssh_secrets
