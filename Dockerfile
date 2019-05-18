
FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm init
RUN npm i -g
RUN npm i typescript -g
RUN npm i sucrase -g
RUN npm i nodemon -g


COPY . .

EXPOSE 8000

CMD [ "npm","start"]