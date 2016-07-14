#!/bin/bash
#
# This configures an environment for me on a new box

# Installer command for the box
install="apt-get install -y"

# Command to update software. If undesired, leave blank
update="apt-get update -y && apt-get upgrade -y"

# Cleanup command, if needed. Otherwise leave blank
cleanup="apt-get autoremove -y && apt-get clean -y"

$install git binwalk upx
git clone https://github.com/radare/radare2
cd radare2
make && make install
cd ~
