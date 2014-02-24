Ubuntu Install Node
---

This is a bash script to install and configure a Node.JS server.

It installs Node v0.10.21 using [nvm](https://github.com/creationix/nvm).

It also configures iptables to redirect port 80 to 3000 and port 443 to 3001 so you can run your node applications without root permission. 

Install
---

First become root with `sudo su' 
Next run `install-su.sh` with either `./install-su.sh` or `bash install-su.sh`.
Then exit root user mode `exit` to become a normal user.
Last run `install-nosu.sh` again with either `./install-nosu.sh` or `bash install-nosu.sh`.

You MUST `sudo su` before running `install-su.sh` or the install will fail.

Notes
---

The two scripts install and configures a lot of useful software some specific to Node some not. 

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