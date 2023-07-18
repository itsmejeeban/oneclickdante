sudo su
apt update
apt install dante-server
danted -v
cd /etc/init.d/
rm -rf danted
wget https://raw.githubusercontent.com/itsmejeeban/oneclickdante/main/danted
chmod +x /etc/init.d/danted
update-rc.d danted defaults
cd /etc/
rm -rf danted.conf
wget https://raw.githubusercontent.com/itsmejeeban/oneclickdante/main/danted.conf
systemctl start danted
