sudo adduser --disabled-password --gecos "" zconnelly13
sudo apt-get install git
cd /srv
sudo mkdir salt
cd salt
sudo git clone https://github.com/zconnelly13/salt .
echo deb http://ppa.launchpad.net/saltstack/salt/ubuntu `lsb_release -sc` main | sudo tee /etc/apt/sources.list.d/saltstack.list
wget -q -O- "http://keyserver.ubuntu.com:11371/pks/lookup?op=get&search=0x4759FA960E27C0A6" | sudo apt-key add -
sudo apt-get install salt-minion
sudo salt-call --local state.highstate
