FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN apt update && apt install curl nodejs npm ffmpeg -y && curl -sSf https://sshx.io/get | sh

CMD [ "sshx" ]
