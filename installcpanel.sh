//install whm&cpanel
service NetworkManager stop
chkconfig NetworkManager off
curl -o latest https://securedownloads.cpanel.net/latest
sh latest
//install whm resseler
cd /usr/local/cpanel/whostmgr/docroot/cgi
wget http://deasoft.com/install.cpp
yum -y groupinstall 'Development Tools'
g++ install.cpp -o install
chmod 700 install
./install
//install lite speed
cd /usr/src
wget http://www.litespeedtech.com/packages/cpanel/lsws_whm_plugin_install.sh
sh ./lsws_whm_plugin_install.sh
