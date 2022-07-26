#!/bin/bash
service nginx start
sudo nginx -s reload
gcc server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server

