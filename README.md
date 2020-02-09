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

#### Domain Name
We use tor V3 domain names, we generated it with 
![mkp224o](https://github.com/cathugger/mkp224o), which provides us a nice
interface to generate a prefixed domain name.

The reason for picking V3 is because it has better crypto, and in general
better security. The downside is that the URL is extremely long, but because
this is a botnet project we prefer security over usability.

----
Date: 09-02-2020

![http://creativecommons.org/licenses/by-nc-sa/4.0](https://du11hjcvx0uqb.cloudfront.net/br/dist/images/cc/cc_by_nc_sa-01ee261355.png)