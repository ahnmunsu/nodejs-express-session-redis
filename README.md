# nodejs-express-session-redis
Management session using Node.js, Express and Redis  
Redis를 세션 저장소로 하는 인증 서버를 Node.js와 Express로 구현한 예제이다.  

먼저 docker를 설치한다.  
```
$ sudo apt install docker.io
```
사용자 권한으로 docker를 실행하기 위해 아래를 실행하고 linux를 logout 했다가 다시 login 한다.  
```
$ sudo usermod -a -G docker $USER
$ sudo service docker restart
```

docker image를 build한다.
```
$ docker build -t ahnmunsu/nodejs-express-session-redis .
```

docker image를 실행한다.  
```
$ docker run -p 3000:3000 -d ahnmunsu/nodejs-express-session-redis
```

docker ps 명령어를 통해 container가 실행 중인 것을 확인하고 브라우저에서 127.0.0.1:3000 주소로 접속한다.  
```
$ docker ps
CONTAINER ID        IMAGE                                   COMMAND                  CREATED             STATUS              PORTS                    NAMES
947de2942a53        ahnmunsu/nodejs-express-session-redis   "docker-entrypoint.s…"   About an hour ago   Up About an hour    0.0.0.0:3000->3000/tcp   unruffled_burnell
```


References  
*  https://codeforgeek.com/manage-session-using-node-js-express-4/
*  https://nodejs.org/ko/docs/guides/nodejs-docker-webapp/
*  https://kb.objectrocket.com/redis/how-to-install-redis-on-ubuntu-using-docker-505
