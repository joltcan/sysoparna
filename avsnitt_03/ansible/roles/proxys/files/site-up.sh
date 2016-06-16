#!/bin/bash

if [ -f /etc/nginx/.down.lck ]; then
        rm /etc/nginx/conf.d/*.conf
        mv /etc/nginx/disabled/* /etc/nginx/conf.d
        rm /etc/nginx/.down.lck
        /usr/sbin/service nginx reload
else
        echo "sites seems to be up already, exiting."
        exit 1
fi
