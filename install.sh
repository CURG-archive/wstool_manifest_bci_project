#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-hyrdo-desktop-full
sudo rosdep init
rosdep update

sudo apt-get install python-wstool
sudo apt-get install ros-hydro-moveit-full
sudo apt-get install libprotobuf-dev libprotoc-dev libzmq-dev libboost-thread-dev libboost-program-options-dev cmake
sudo apt-get install python-pip
sudo apt-get install libblas-dev liblapack-dev gfortran
sudo pip install -U scikit-learn
sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

#PCAN Driver: www.peak-system.com/fileadmin/media/linux/index.htm
#needs libpopt
#may need following line to run
#sudo /sbin/modprobe pcan

