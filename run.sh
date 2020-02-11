chown debian-tor:debian-tor -R /var/lib/tor
chown irc:irc -R /etc/inspircd

cp -R -u -p /data/configs/inspircd/* /etc/inspircd/
cp -R -u -p /data/configs/tor/* /etc/tor/

service inspircd start
service tor start

tail -f /dev/null
