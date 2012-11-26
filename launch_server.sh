#!/bin/bash


#move working directory to script path
cd -P $(dirname $0)

#get last server version
source SERVER_VERSION

#if no arg: use default config
if [ $# -eq 0 ]; then
    echo "No argument specified, using default config file conf/server-default.xml"
    config="-c conf/server-default.xml"
fi

#if one argument, use this config
if [ $# -ge 1 ]; then
    echo "Using config file $1"
    config="-c $1"
fi

#build main jar name
main_jar="bin/baggle-server-$last_server_version.jar"

#launch server
java -jar $main_jar $config

