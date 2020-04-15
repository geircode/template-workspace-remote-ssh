cd %~dp0
docker build --no-cache -f Dockerfile -t geircode/template_workspace_remote_ssh .
pause