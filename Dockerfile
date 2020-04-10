FROM geircode/template_workspace_remote_ssh-filecontainer:latest as filecontainer

FROM python:3.8-slim-buster

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt 

# RUN apt-get update
# RUN apt-get install -y jq

WORKDIR /files
COPY --from=filecontainer /files .
RUN tar --strip-components=1 -xvzf docker-18.06.1-ce.tgz -C /usr/local/bin
RUN rm *

ENTRYPOINT tail -f /dev/null

