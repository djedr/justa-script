#!/usr/bin/env node
require('shelljs/global');

cd('/usr/share/justa-script');
const desktopFiles = ls('*.desktop');
desktopFiles.forEach(file => rm('/usr/share/applications/' + file));

rm('-r', '/usr/share/justa-script');

exec('update-desktop-database');
