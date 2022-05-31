#!/bin/bash
# Script by arkfalak

sudo apt-get update
sudo apt-get install ocserv -y
rm -rf /etc/ocserv/ocserv.conf
cd /etc/ocserv/
apt install curl -y
curl -O https://raw.githubusercontent.com/arkfalak/openvpn/main/openvpn/ocserv.conf
cd
sudo systemctl restart ocserv
sudo cp /lib/systemd/system/ocserv.service /etc/systemd/system/ocserv.service
[ -f /etc/systemd/system/ocserv.service ] && sed -i "s/^#\?Requires=ocserv.socket.*/#Requires=ocserv.socket/g" /etc/systemd/system/ocserv.service;
[ -f /etc/systemd/system/ocserv.service ] && sed -i "s/^#\?Also=ocserv.socket.*/#Also=ocserv.socket/g" /etc/systemd/system/ocserv.service;
sudo systemctl daemon-reload
sudo systemctl stop ocserv.socket
sudo systemctl disable ocserv.socket
sudo systemctl restart ocserv.service
echo "111" | ocpasswd -c /etc/ocserv/ocpasswd itel3

echo -e "net.ipv4.ip_forward=1" >/etc/sysctl.conf
sudo sysctl -p
NICValue=`ip -o -4 route show to default | awk '{print $5}'`

sudo iptables -t nat -A POSTROUTING -o ${NICValue} -j MASQUERADE
sudo iptables -t nat -L POSTROUTING
sudo iptables -I INPUT -p tcp --dport 443 -j ACCEPT
sudo iptables -I INPUT -p udp --dport 443 -j ACCEPT
su -
iptables-save > /etc/iptables.rules
cd /etc/systemd/system/
curl -O https://raw.githubusercontent.com/arkfalak/openvpn/main/openvpn/iptables-restore.service
cd
sudo systemctl daemon-reload
sudo systemctl enable iptables-restore
systemctl stop ocserv
systemctl restart ocserv
echo "111" | ocpasswd -c /etc/ocserv/ocpasswd itel3
echo "W*SFV3t(x.yk#%" | ocpasswd -c /etc/ocserv/ocpasswd 8_Kha*14
echo "gAE_8^W2q#u5Mk=M*UDd7fmv" | ocpasswd -c /etc/ocserv/ocpasswd 7_Kha*10
echo "cg0KkMjbGdJEh@%Jw7*sFta5" | ocpasswd -c /etc/ocserv/ocpasswd 6_Kha*10
echo "cg0KkMjbGdJEh@%Jw7*sFta5" | ocpasswd -c /etc/ocserv/ocpasswd 5_Kha*10
echo "cg0KkMjbGdJEh@%Jw751)4ta" | ocpasswd -c /etc/ocserv/ocpasswd Kha*10
echo "9eklys" | ocpasswd -c /etc/ocserv/ocpasswd khalid3a
echo "W*SFV3t(x.yk#%" | ocpasswd -c /etc/ocserv/ocpasswd 8_Kha*14
echo "gAE_8^W2q#u5Mk=M*UDd7fmv" | ocpasswd -c /etc/ocserv/ocpasswd 7_Kha*10
echo "cg0KkMjbGdJEh@%Jw7*sFta5" | ocpasswd -c /etc/ocserv/ocpasswd 6_Kha*10
echo "cg0KkMjbGdJEh@%Jw7*sFta5" | ocpasswd -c /etc/ocserv/ocpasswd 5_Kha*10
echo "cg0KkMjbGdJEh@%Jw751)4ta" | ocpasswd -c /etc/ocserv/ocpasswd Kha*10
echo "9eklys" | ocpasswd -c /etc/ocserv/ocpasswd khalid3a

sysctl net.ipv4.tcp_congestion_control
sysctl net.ipv4.tcp_available_congestion_control
sudo bash -c 'echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf'
sudo bash -c 'echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf'
sudo sysctl -p
sysctl net.ipv4.tcp_congestion_control
sudo bash -c 'echo "* soft nofile 512000" >> /etc/security/limits.conf'
sudo bash -c 'echo "* hard nofile 512000" >> /etc/security/limits.conf'
sudo bash -c 'echo "* soft nofile 512000" >> /etc/security/limits.conf'
sudo bash -c 'echo "* hard nofile 512000" >> /etc/security/limits.conf'

sudo apt-get install php-memcache -y
sudo apt-get install php-memcached -y

sudo service accounts-daemon stop
sudo apt remove accountsservice -y
systemctl stop systemd-journald.service
sudo service systemd-journald stop
systemctl stop syslog.socket rsyslog.service
sudo service rsyslog stop
apt install htop
apt install nload

sudo reboot
