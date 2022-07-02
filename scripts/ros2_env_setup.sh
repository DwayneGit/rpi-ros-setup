# source setup files & add to startup
source /opt/ros/humble/setup.bash
echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

# set domain id -( todo: pass as argument)
echo "export ROS_DOMAIN_ID=27" >> ~/.bashrc

# create workspace
mkdir -p ~/dev_ws/src
cd ~/dev_ws/src

