#!/bin/bash
service nginx start
sudo nginx -s reload
spawn-fcgi -p 8080 -n /server
