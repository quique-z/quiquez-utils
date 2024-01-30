# Set vars
DUCKDNS_DOMAIN="Your domain here"
DUCKDNS_TOKEN="Your token here"
RANDOM_MINUTE=$(( RANDOM % 60 ))

# Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Setup duckdns script.
mkdir duckdns
cd duckdns
echo "echo url=\"https://www.duckdns.org/update?domains=${DUCKDNS_DOMAIN}&token=${DUCKDNS_TOKEN}&ip=\" | curl -k -o ~/duckdns/duck.log -K -" > duck.sh
sudo chmod 777 duck.sh
cd ..

# Install pi-hole
curl -L https://install.pi-hole.net | bash

# Install wireguard
curl -L https://install.pivpn.io | bash

# Setup crontab to update pihole and duckdns.
echo "$(echo '15 2 * * 1 pihole -up && pihole -g' ; crontab -l 2>&1)" | crontab -
echo "$(echo "${RANDOM_MINUTE} * * * * ~/duckdns/duck.sh" ; crontab -l 2>&1)" | crontab -

# Setup crontab to reboot every week.
echo "$(echo '30 2 * * 1 sudo reboot' ; sudo crontab -l 2>&1)" | sudo crontab -

# Setup ssh access.
ssh-keygen

# Next time that I get a fresh /etc/ssh/sshd_config file I should look into automating this bit.
# https://superuser.com/questions/759481/ssh-how-to-change-value-in-config-file-in-one-command

# Reboot to finish setup.
sudo reboot

# SCP command to extract .config file
scp -P <port> pi@<domain>.duckdns.org:/home/pi/configs/<config-name>.conf ./Documents