# Docker Secrets setup

Script container for setting up Secrets for this repository

## Usage

Start Container by running: *docker-compose.dockersecrets.up.bat*

```shell
ssh-keygen -t rsa -b 4096 -C your@email.no -P MyPassword -f /template_workspace_remote_ssh_secrets/ubuntu_rsa
```

On Windows Host, navigate to "..\..\DockerSecrets\template_workspace_remote_ssh_secrets" to find the SSH Keys.
