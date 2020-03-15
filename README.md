# Default template for using Containers as a workspace

## Docker and Docker-Compose uses .env filen:
COMPOSE_CONVERT_WINDOWS_PATHS=1
    - makes it possible to share Sockets on Windows    
COMPOSE_PROJECT_NAME=<name>_<id> i.e "template-workspace-remote-ssh"
    - overrides the default name of the compose project name so that the name of the network becomes unique

## How to use this workspace template

Click on "Open Repository in Container":

![image-20200315121957102](files/image-20200315121957102.png)

And copy in the url of the repo: https://github.com/geircode/template-workspace-remote-ssh

This will create a container and clone this repository into the container with the credentials you used to clone the repository locally.

### Do not use Volume Mounts in Windows

I try to avoid using Volume Mounts that mounts the local filesystem into the container, because this is always the biggest PAIN when setting up any workshop with alot of other peoples laptops with different setups and network policy limitations.





