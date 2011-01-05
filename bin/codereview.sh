#!/bin/sh
cd $HOME/bin
if [ ! -f upload.py ]
then
wget http://codereview.appspot.com/static/upload.py
chmod +x upload.py
fi
upload.py -s codereview.bitmazk.com $*
