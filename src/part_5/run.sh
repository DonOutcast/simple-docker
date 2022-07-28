#!/bin/bash
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n /server
