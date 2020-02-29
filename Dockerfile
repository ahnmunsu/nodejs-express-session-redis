FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./
RUN apt-get -y update
RUN apt-get install -y redis-server
RUN cp /etc/redis/redis.conf /etc/redis/redis.conf.default
RUN npm install

RUN mkdir views
COPY ./views/index.html ./views/index.html
COPY ./server.js ./server.js
COPY ./start.sh ./start.sh

EXPOSE 3000

#CMD ["node", "server.js"]
CMD ["sh", "start.sh"]
