#!/bin/sh

chown -R root:root desktop etc MusicMagicMixer ui
chmod -R 755 *
tar -czf package.tgz -X exclude.txt desktop etc MusicMagicMixer ui

chown -R root:root scripts INFO CHANGELOG LICENSE package.tgz PACKAGE_ICON.PNG PACKAGE_ICON_120.PNG
chmod -R 755 *
tar -cvf ../musicip-x86-1.8-002.spk -X exclude.txt scripts INFO CHANGELOG LICENSE package.tgz PACKAGE_ICON.PNG PACKAGE_ICON_120.PNG

exit 0