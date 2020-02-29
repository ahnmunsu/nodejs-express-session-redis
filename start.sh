#!/bin/sh
nohup redis-server &
node server.js
