#!/bin/sh

CRON_FILE="$ROBOTS_ROOT/crontab"
REQUIREMENTS_FILE="$ROBOTS_ROOT/requirements.txt"

if [ -f $CRON_FILE ]; then
    cp $CRON_FILE /etc/cron.d/robots-cron
    chmod +x /etc/cron.d/robots-cron
    crontab /etc/cron.d/robots-cron
fi;

if [ -f $REQUIREMENTS_FILE ]; then
    pip3.5 install -r $REQUIREMENTS_FILE
fi;

cron && tail -f /var/log/robots.log
