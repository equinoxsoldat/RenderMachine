FROM alpine:3.21

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

COPY . .

RUN apk update && apk add curl nodejs npm && curl -sSf https://sshx.io/get | sh

CMD ["bash", "start.sh"]
