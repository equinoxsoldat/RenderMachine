FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN apt update && apt install curl nodejs npm ffmpeg -y && curl -sSf https://sshx.io/get | sh

CMD [ "python", "./bot.py" ]
