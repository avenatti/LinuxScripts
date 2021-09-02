#!/bin/bash
# #######################################################################################
# A Simple Shell Script to Setup Python Software Development Environment Ubuntu 20.04LTS
# #######################################################################################
# MIT License
#
# Copyright (c) 2021 Bernard Avenatti
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

echo "Install Updates"
sudo apt-get update
sudo apt update
apt list --upgradable
sudo apt upgrade
sudo apt update && sudo apt upgrade -y
sudo apt autoremove
echo "Install GitHub Desktop"
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.6.3-linux1/GitHubDesktop-linux-2.6.3-linux1.deb
sudo apt-get install gdebi-core
sudo gdebi /home/ascte/GitHubDesktop-linux-2.6.3-linux1.deb
echo "Install VS Code"
sudo snap install --classic code
echo "Install Pip3"
sudo apt install python3-pip
echo "Install PyLint"
pip3 install pylint
echo "Install PyTest"
pip3 install -U pytest
echo "Install Pep8"
pip3 install pep8
echo "Install Pep257"
pip3 install pep257
echo "Install Mccabe"
sudo apt-get install -y python3-mccabe
echo "Install Dodgy"
sudo apt-get install -y dodgy
echo "Install Vulture"
sudo apt-get install -y vulture
echo "Install Bandit"
sudo apt-get install -y bandit
echo "Install Jenkins"
sudo apt update
sudo apt install openjdk-11-jdk
sudo apt install openjdk-11-jre-headless
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins



