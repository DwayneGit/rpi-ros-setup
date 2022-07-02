# install vs code

# install node js & yarn
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm -g install yarn

yarn global add code-server 

sudo cp ../files/config.yaml ~/.config/code-server/config.yaml

sudo cp ../files/code-server.service /etc/systemd/system/code-server.service
sudo systemctl start code-server
sudo systemctl enable code-server

