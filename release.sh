#!/bin/bash

source version.cfg
suffix="CoolOS-$version"

# clean version release folder or create it
if [ ! -d "release/$suffix" ]
then
  mkdir release/$suffix/
else
  if [ "$(ls -A $DIR)" ]
  then
    rm -r release/$suffix/*
  fi
fi



# move files into release folder
cp -r dist/f7-C/f7-update-CoolOS-v$version/ release/$suffix/update-$suffix
zip -r release/$suffix/$suffix.zip dist/f7-C/f7-update-CoolOS-v$version/
cp dist/f7-C/flipper-z-f7-update-CoolOS-v$version.tgz release/$suffix/$suffix.tgz
