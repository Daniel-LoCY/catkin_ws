sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update -y
sudo apt install ros-noetic-desktop -y
sudo apt install python3-rosdep -y
sudo apt install python3-rosinstall -y
sudo apt install python3-rosinstall-generator -y
sudo apt install python3-wstool -y
sudo apt install build-essential -y
sudo rosdep init
rosdep update
source /opt/ros/noetic/setup.bash 