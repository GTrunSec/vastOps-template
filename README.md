# VastOps Templates

This repo for Vast's users interface, see the [issue](https://github.com/GTrunSec/threatbus2nix/pull/16) get more information.

    Only the operator host required nix, and make should you have enabled the ssh service on your deploy target host. The target host doesn't need to install any dependencies.

# Required files


| files            |                                     |
|------------------|-------------------------------------|
| config.toml      | hosts's information                 |
| deploy-nodes.env | env variables for deploying process |
|                  |                                     |


## Create your coustom profile for deploying.

- `mkdir -p ./profiles/<name>`

cp the required files to your specific profile directory, and modify those files to your expectation.

## Env variables

### Deployment

``` sh
# can be  [ "vast-bin" "vast-release" "vast-latest"]
VERSION=vast-bin

HOST1=root@192.168.122.126
SSH_OPT1="-p 22 -o StrictHostKeyChecking=no"

HOST2=root@192.168.122.212
SSH_OPT2="-p 22 -o StrictHostKeyChecking=no"
```




