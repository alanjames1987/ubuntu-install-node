Ubuntu Install Node
----

This is a bash script I use to install my Node.JS servers.

It installs Node v0.10.21 using [nvm](https://github.com/creationix/nvm).

First run `install-su.sh` as a su.
Second run `install-nosu.sh` with as a normal user.

You MUST `sudo su` before running `install-su.sh` or the install will fail.

It installs and configures a lot of useful software some specific to Node some not. 

The Node related software installed is.
* [forever](https://github.com/nodejitsu/forever)
* [node-dev](https://github.com/fgnass/node-dev)
* [pm2](https://github.com/Unitech/pm2)

Author
---
Alan James: [alanjames1987@gmail.com](mailto:alanjames1987@gmail.com)

License
---
Licensed under [MIT](http://mogulmvc.com/general/license).