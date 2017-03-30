#!/bin/sh

REQUIREMENTS_FILE="$HOOKS_ROOT/requirements.txt"

pip3.5 install Flask

if [ -f $REQUIREMENTS_FILE ]; then 
    pip3.5 install -r $REQUIREMENTS_FILE
fi

/usr/local/bin/python3.5 /webhooks.py
