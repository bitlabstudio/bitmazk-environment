#!/usr/bin/env bash
cd $HOME

echo "Installing important tools"
sudo apt-get install xclip
sudo apt-get install curl
sudo apt-get install git
sudo apt-get install meld
sudo apt-get install mercurial
sudo apt-get install gettext

echo "Installing important libraries needed for PIL and mysql-python"
sudo apt-get install build-essential
sudo apt-get install libssl-dev
sudo apt-get install libjpeg62 libjpeg-dev
sudo apt-get install libfreetype6 libfreetype6-dev
sudo apt-get install libmysqlclient-dev python2.6-dev

echo "Installing important libraries needed for lxml" 
sudo apt-get install libxslt1-dev
sudo apt-get install libxml2-dev

echo "Installing python2.7"
sudo apt-get install python2.7
sudo apt-get install python2.7-dev

echo "Installing virtualenvwrapper"
sudo apt-get install python-setuptools
sudo easy_install virtualenv
sudo apt-get install python-pip
sudo pip install virtualenvwrapper
export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh
echo "export WORKON_HOME=~/Envs" >> .bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> .bashrc

echo "Installing databases"
sudo apt-get install mysql-server
sudo apt-get install postgresql pgadmin3

echo "Installing crunchyfrog"
cd $HOME
mkdir opt
cd opt
hg clone http://crunchyfrog.googlecode.com/hg/ crunchyfrog
sudo pip install configobj
sudo pip install sqlparse
sudo pip install mysql-python
cd $HOME
mkdir bin
cd bin
ln -s $HOME/opt/crunchyfrog/crunchyfrog

echo "Installing SASS & csstidy"
sudo apt-get install ruby
sudo apt-get install rubygems1.8
sudo gem install haml
sudo apt-get install csstidy
sudo apt-get install libhaml-ruby1.8

cd $HOME
echo "export PATH=$HOME/bin/:$PATH" >> .bashrc