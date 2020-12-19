FROM node:12
WORKDIR /home/app

COPY package*.json ./
COPY yarn.lock ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
