#!/bin/bash

APPNAME="kdictthai"
VERSION="0.0.1beta1"
DATNAME="$APPNAME-data-$VERSION"

[ ! -z $1 ] && KDEDIR=$1

if [ -z $KDEDIR ]; then
  echo "!!! Not found your default KDE directory !!!"
  echo "Please manual specify KDE directory base"
  echo
  echo "Usage: install.sh <kde dir>"
  echo
  echo "  kde dir is base of your kde installation"
  echo "  Ex. install.sh /usr"
  echo "      install.sh /opt/kde3"
  exit 0
fi

echo "Install data to $KDEDIR/share/apps/$APPNAME/dict_data ..."
umask 0
cp -f -R $DATNAME/share $KDEDIR
echo "=====> Completed."
echo
