#! /bin/bash
# 3rd-partydependencies
sudo apt-get update
sudo apt-get install libusb-1.0-0-dev pkg-config
sudo apt-get install libglfw3-dev
sudo apt-get install qtcreator
sudo scripts/install_qt.sh
# install
git clone https://github.com/IntelRealSense/librealsense/tree/v1.12.1
cd librealsense
sudo cp config/99-realsense-libusb.rules /etc/udev/rules.d
sudo udevadm control --reload-rules && udevadm trigger
sudo ./scripts/patch-uvcvideo-16.04.simple.sh
sudo modprobe uvcvideo
		
