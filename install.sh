#!/bin/bash

# install stuff we need
apt-get update -y
apt-get install -y python3 python3-pip python3-openssl gcc-mingw-w64 nasm upx binutils wget apt-transport-https procps mono-complete less metasploit-framework
python3 -m pip install -r /root/shad0w/requirements.txt

# install dotnet
wget https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb
dpkg -i /tmp/packages-microsoft-prod.deb

wget http://archive.ubuntu.com/ubuntu/pool/main/libu/liburcu/liburcu6_0.11.1-2_amd64.deb -O /tmp/liburcu6_0.11.1-2_amd64.deb
dpkg -i /tmp/liburcu6_0.11.1-2_amd64.deb

wget http://ftp.de.debian.org/debian/pool/main/u/ust/liblttng-ust-ctl4_2.10.3-1_amd64.deb -O /tmp/liblttng-ust-ctl4_2.10.3-1_amd64.deb
dpkg -i /tmp/liblttng-ust-ctl4_2.10.3-1_amd64.deb

wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu57_57.1-6+deb9u4_amd64.deb -O /tmp/libicu57_57.1-6+deb9u4_amd64.deb
dpkg -i /tmp/libicu57_57.1-6+deb9u4_amd64.deb

wget http://ftp.ca.debian.org/debian/pool/main/u/ust/liblttng-ust0_2.10.3-1_amd64.deb -O /tmp/liblttng-ust0_2.10.3-1_amd64.deb
dpkg -i /tmp/liblttng-ust0_2.10.3-1_amd64.deb

apt update -y
apt install dotnet-sdk-2.2 -y
