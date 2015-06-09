wstool manifest bci project
===========================

This repository contains the files necessary to install the correct repositories for each workspace in the BCI project.

1. Run install.sh to ensure your system has installed the necessary programs and libraries (wstool, pip, scikit).
2. In each workspace, copy the .rosinstall inside the catkin_ws/src directory, and run wstool update to pull the correct version of the repositories needed.
