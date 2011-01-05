#!/bin/sh

# This file will check for Google's upload.py and download it if it does not
# exist. See http://code.google.com/p/rietveld/wiki/CodeReviewHelp for more
# information.

# By running something like 'codereview.sh 2hd4H7..a83ho7' you can upload your
# changeset to our internal codereview tool.

cd $HOME/bin
if [ ! -f upload.py ]
then
wget http://codereview.appspot.com/static/upload.py
chmod +x upload.py
fi
upload.py -s codereview.bitmazk.com $*
