# install
sudo apt install curl wget python3-pip git gcc g++ make python-setuptools python3-setuptools
sudo apt remove brltty
sudo gpasswd --add robodev dialout 

wget https://github.com/joan2937/pigpio/archive/master.zip
unzip master.zip
cd pigpio-master
make
sudo make install

sudo cp ../files/pigpiod.service /lib/systemd/system/pigpiod.service
sudo systemctl start pigpiod.service
sudo systemctl enable pigpiod.service

wget https://raw.githubusercontent.com/raspberrypi/pico-setup/master/pico_setup.sh
sudo chmod _x pico_setup.sh
./pico_setup.sh
