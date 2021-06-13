#!/bin/bash

#move working directory to script path
cd -P $(dirname $0)

#if no arg: use default config
if [ $# -eq 0 ]; then
    echo "No argument specified, using default config file conf/server-default.xml"
    config="-c conf/server-default.myml"
fi

#if one argument, use this config
if [ $# -ge 1 ]; then
    echo "Using config file $1"
    config="-c $1"
fi

echo $config

#launch server
java -jar bin/baggle-server.jar $config

