FROM node:8

WORKDIR /usr/src/app

COPY . .

RUN npm install -g expose-fs

EXPOSE 8441

ENTRYPOINT [ "expose-fs", "/mnt" ]
