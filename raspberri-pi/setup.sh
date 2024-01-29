# Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Install pi-hole
curl -sSL https://install.pi-hole.net | bash

# Install wireguard
curl -L https://install.pivpn.io | bash

# Setup crontab to update pihole.
echo "$(echo '15 2 * * 1 pihole -up && pihole -g' ; crontab -l 2>&1)" | crontab -

# Setup crontab to reboot every week.
echo "$(echo '30 2 * * 1 sudo reboot' ; sudo crontab -l 2>&1)" | sudo crontab -

# Setup ssh access.
ssh-keygen

# Next time that I get a fresh /etc/ssh/sshd_config file I should look into automating this bit.
# https://superuser.com/questions/759481/ssh-how-to-change-value-in-config-file-in-one-command

# Reboot to finish setup.
sudo reboot

# SCP command to extract .config file
scp -P <port> pi@domain.duckdns.org:/home/pi/configs/<config-name>.conf ./Documents