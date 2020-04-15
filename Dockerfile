FROM geircode/template_workspace_remote_ssh-filecontainer:latest as filecontainer

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get install -y git dos2unix unzip

RUN pip install -r requirements.txt 

WORKDIR /files
COPY --from=filecontainer /files .
RUN ls -al

# Docker CLI
RUN tar --strip-components=1 -xvzf docker.tgz -C /usr/local/bin

RUN rm *

ENTRYPOINT tail -f /dev/null

