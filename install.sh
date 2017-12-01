#!/bin/bash

ROOT=$(pwd)

echo 'Strat install Monoeci wallet'
echo 'https://github.com/yonseiyes/monacoCoin_qtbuild'

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install unzip
sudo apt-get install git
sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev -y
sudo apt-get install libboost-test-dev libboost-thread-dev libboost-all-dev unzip libminiupnpc-dev python-virtualenv -y
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils -y

#sudo apt-get install build-essential libtool automake autotools-dev autoconf pkg-config libssl-dev libgmp3-dev libevent-dev bsdmainutils -y
#sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler -y
#sudo apt-get install libboost-all-dev -y

sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y
#sudo apt-get install libminiupnpc-dev -y
#sudo apt-get install libqrencode-dev -y
#sudo apt-get install make -y
#sudo apt-get install make-guile -y

pushd $ROOT/monacoCoin_qtbuild
./install_db.sh
popd

git clone https://github.com/monacocoin-net/monacoCoin-Core

pushd $ROOT/Bitradio/src
sudo make -f makefile.unix # Headless
sudo cp Bitradiod /usr/local/bin
popd

echo 'finished install!'
