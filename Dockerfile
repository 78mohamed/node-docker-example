FROM node:16

ENV HOME=/home/app

RUN apt update

COPY package.json package-lock.json $HOME/node_docker/

WORKDIR $HOME/node_docker

RUN npm install --silent --progress=false

COPY . $HOME/node_docker

CMD ["npm", "start"]
