#!/bin/bash

chmod 0644 /etc/cron.d/*
crontab /etc/cron.d/*
touch /var/log/cron.log
cron -f

