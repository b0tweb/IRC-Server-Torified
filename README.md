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

#### Connecting to The Server
To connect to the server you need two things

- An IRC client
- Tor Installed

In this part we only focus on HexChat, this is because it is easily configured.
Therefore, make sure you have both `tor` and `hexchat` installed on your system.

First we need to configure the tor to allow us to connect via a SocksPort,
open the config located at `/etc/tor/torrc`. Uncomment the following line
```
#SocksPort 9050 # Default: Bind to localhost:9050 for local connections.
```

Now restart tor with `systemctl restart tor`.

---

Next we will configure hexchat.

Create a new network by adding `new`, fill out the following settings,
make sure to fill out the right domain name where `yourdomainname.onion` 
is stated.

![](https://git.xoryo.nl/tu-e/2ic80/project/irc-server/raw/master/images/Screenshot_from_2020-02-09_15-59-19.png)

Then press `close` and connect. The connection will still not be able to be 
established but we can then easily configure the tor proxy.

Next click on `Settings -> Preferences` in the menu bar at the top. 
Under the `Network` tab click on `Network setup`. Fill out the following
information under the `Proxy Server` section.

![](https://git.xoryo.nl/tu-e/2ic80/project/irc-server/raw/master/images/Screenshot_from_2020-02-09_16-03-35.png)

Then simply reconnect to the network and everything should be connect normally.
----
Date: 09-02-2020

![http://creativecommons.org/licenses/by-nc-sa/4.0](https://du11hjcvx0uqb.cloudfront.net/br/dist/images/cc/cc_by_nc_sa-01ee261355.png)