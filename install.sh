#!/bin/bash
cp *.sh /usr/share/justa-script/
cp *.desktop /usr/share/justa-script/
ln -s /usr/share/justa-script/*.desktop /usr/share/applications/

chmod +x /usr/share/justa-script/*.sh

update-desktop-database
