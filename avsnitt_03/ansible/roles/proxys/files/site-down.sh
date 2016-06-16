#!/bin/bash

if [ -f /etc/nginx/.down.lck ]; then
        echo "sites is already down, exiting."
        exit 1
fi

mv /etc/nginx/conf.d/*.conf /etc/nginx/disabled
if [ "$?" == "0" ]; then
        ln -s /etc/nginx/down/down.conf /etc/nginx/conf.d/
        ln -s /etc/nginx/disabled/status.conf /etc/nginx/conf.d/
        touch /etc/nginx/.down.lck
        /usr/sbin/service nginx reload
fi
