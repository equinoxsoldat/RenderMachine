FROM debian:11

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

COPY . .

RUN apt update && apt-get install curl nodejs npm -y && curl -sSf https://sshx.io/get | sh

CMD ["bash", "start.sh"]
