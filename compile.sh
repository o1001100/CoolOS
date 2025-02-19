#!/bin/bash

shopt -s dotglob

source version.cfg

git checkout upstream/dev lib

bump () {
  # bump version number
  version=$((version+1))
  sed -i 's/=".*"/="'"$version"'"/g' version.cfg
}

version () {
  # set version
  sed -i 's/DIST_SUFFIX = f".*"/DIST_SUFFIX = f"CoolOS-v'"$version"'"/g' fbt_options.py
  #sed -i 's/VERSION = ".*"/VERSION = "'"$version"'"/g' scripts/version.py
  if grep -q 'CoolOS version .*' applications/settings/about/about.c; then
    sed -i 's/CoolOS version .*"/CoolOS version '"$version"'"/g' applications/settings/about/about.c
  else
    echo "version text in applications/settings/about/about.c must be replaced manually!"
  fi

}

clean () {
  printf "\n### Cleaning Up ###"

  if [ "$(/bin/ls -Aq applications_user)" ]; then
    printf "\nCleaning ./applications_user"
    sleep 2
    rm -rv applications_user/*
  fi

  if [ "$(/bin/ls -Aq assets/resources/apps)" ]; then
    printf "\nCleaning ./assets/resources/apps"
    sleep 2
    rm -rv assets/resources/apps/*
  fi

  printf "\nRunning fbt -c\n"
  sleep 1
  ./fbt -c
}

apps () {
  printf "\n### Building Apps ###\n"
  sleep 1
  ./fbt fap_dist FORCE_NO_DIRTY=1
  rsync -r dist/f7-C/apps/ applications_user
}

firmware () {
  printf "\n### Building Firmware Package ###\n"
  sleep 1
  ./fbt updater_package FORCE_NO_DIRTY=1
}

release () {
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

}

help () {
  cat << EOF
Usage: ./compile [FLAG]

With no FLAG(s), will clean build directories and build full firmware update package with apps (can be found in dist/f7-C)

  -r, --release     cleans build directories, builds full firmware package with apps, bumps version number, and creates release packages in ./release
  -c, --clean       cleans build directories and removes built applications
  -a, --apps        builds all apps using fbt (.faps can be found in dist/f7-C/apps)
  -f, --firmware    builds firmware updater package using fbt (can be found in dist/f7-C)
  -v, --version     sets version flags and exits
  -h, --help        shows this help

Written and provided by o1001100: <https://github.com/o1001100>
EOF
}

case "$1" in
  -r | --release) bump; clean; version; apps; firmware; release; exit;;
  -c | --clean) clean; exit;;
  -a | --apps) version; apps; exit;;
  -f | --firmware) version; firmware; exit;;
  -v | --version) version; exit;;
  -h | --help) help; exit;;
esac

clean; version; apps; firmware; exit
