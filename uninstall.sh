#!/bin/bash

const shell = require('shelljs');

ls -Qm /usr/share/justa-script/*.desktop
rm /usr/share/justa-script/*.sh
rmdir /usr/share/justa-script
rm /usr/share/applications/no-sleep-if-audio.desktop

update-desktop-database
