### IRC Server
The IRC server is hosted in a VM. We do not have to forward any ports towards
our actual host, because TOR will take care of this by forwarding it to the TOR
network. However, it does need internet to be able to connect to the network.

The IRC server only listens to localhost:6667 and will be reachable via the TOR
hostname that can be found at `/var/lib/tor/hidden_service/hostname`, on port
6667. 

#### Connecting to IRC server
To connect to the IRC server you need to setup an IRC client, you also need to
run a TOR proxy on the background. You need to make sure that all IRC traffic
goes through this proxy. 

----
Date: 09-02-2020

![http://creativecommons.org/licenses/by-nc-sa/4.0](https://du11hjcvx0uqb.cloudfront.net/br/dist/images/cc/cc_by_nc_sa-01ee261355.png)