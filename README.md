*ubuntu-install-node!*
---

![](https://raw.githubusercontent.com/alanjames1987/ubuntu-install-node/master/media/logo.png)

This is a set of bash scripts to install and configure a Node.JS server on Ubuntu.

They install Node v0.10.21 using [nvm](https://github.com/creationix/nvm).

They also configures iptables to redirect port 80 to 3000 and port 443 to 3001 so you can run your node applications without root permission. 

Usage
---

First become root with `sudo su` 
Next run `install-su.sh` with either `./install-su.sh` or `bash install-su.sh`.
Then exit root user mode `exit` to become a normal user.
Last run `install-nosu.sh` again with either `./install-nosu.sh` or `bash install-nosu.sh`.

You MUST `sudo su` before running `install-su.sh` or the install will fail.

Notes
---

The two scripts install and configure a lot of useful software some specific to Node some not. 

The Node related software installed is.
* [forever](https://github.com/nodejitsu/forever)
* [node-dev](https://github.com/fgnass/node-dev)

Author
---
Alan James: [alanjames1987@gmail.com](mailto:alanjames1987@gmail.com)

License
---
Licensed under [MIT](https://github.com/alanjames1987/ubuntu-install-node/blob/master/LICENSE).