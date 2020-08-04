#!/bin/bash

if [ -f "ics_website" ]; then
    chmod 600 ics_website
else echo "ics_website not found"
    exit 1

GIT_SSH_COMMAND='ssh -i /ics_website' git clone git@github.com:UTSA-ICS/ICS-Admin.git
