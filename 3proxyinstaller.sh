apt-get update && apt-get -y upgrade
apt-get install -y build-essential nano
wget --no-check-certificate https://github.com/z3APA3A/3proxy/archive/0.9.4.tar.gz
tar xzf 0.9.4.tar.gz
cd 3proxy-0.9.4
make -f Makefile.Linux
cd bin
mkdir /etc/3proxy/
cp 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/idX401/3proxy-auto/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/idX401/3proxy-auto/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate https://raw.githubusercontent.com/idX401/3proxy-auto/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
