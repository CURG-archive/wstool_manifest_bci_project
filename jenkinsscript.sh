#!/bin/bash


sudo rm -rf */

source /opt/ros/hydro/setup.bash

wstool update

cd graspit_python_node
git submodule init
git submodule update
cd src/rpcz/

sudo mkdir build
cd build
sudo cmake .. -Drpcz_build_examples=1
sudo make
sudo make install
cd ../python
sudo python setup.py build
sudo pip install -e .
sudo ldconfig

cd ../graspit_rcpz/python
python generate_protos.py

cd ../../../../../

cd ..
rm -rf build/
rm -rf devel/

catkin_make
#extra catkin_makes for when you have a slow computer...
catkin_make
catkin_make


source devel/setup.bash
rostest bci_experiment_launch bagged_vision_no_hw.launch
