baggle-server-deploy
====================

This repository contains everything needed to deploy an up-to-date b@ggle server in a few steps.
Follow this guide to install your own b@ggle instance, connected to the official b@ggle network.

This guide is made for GNU/Linux Debian6 , feel free to adapt it to your own configuration.

## Requirements

* java runtime environnement (JRE) >= 1.6
* git

## Instructions

Clone baggle-server-deploy git repository from github
``` bash
git clone https://github.com/inouire/baggle-server-deploy.git
```

Launch a server with the default config
``` bash
./launch_server.sh
```

You should now see your b@ggle server from b@ggle client
(Launch it in a click from [baggle official website](http://baggle.org))

If the script doesn't work at all, try to make it executable 
``` bash
chmod +x launch_server.sh
```

You can also use another preset config from conf/ directory
``` bash
./launch_server.sh conf/server-quick.xml
```

Or you can even create your own config from an existing one and launch it
``` bash
./launch_server.sh conf/my_own_config.xml
```

## TODO

Explain what is b@ggle and add a link to the offical website
List the available presets and explain them
