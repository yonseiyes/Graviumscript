#!/bin/bash

#BITRADIO_ROOT=$(pwd)
monacoCoin_ROOT=$(pwd)

# Pick some path to install BDB to, here we create a directory within the BITRADIO directory
BDB_PREFIX="${monacoCoin_ROOT}/db4"
mkdir -p $BDB_PREFIX

# Fetch the source and verify that it is not tampered with
#wget 'http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz'
#echo '12edc0df75bf9abd7f82f821795bcee50f42cb2e5f76a6a281b85732798364ef  db-4.8.30.NC.tar.gz' | sha256sum -c
## -> db-4.8.30.NC.tar.gz: OK
#tar -xzvf db-4.8.30.NC.tar.gz

wget 'https://github.com/monacocoin-net/monacoCoin-Core/releases/download/0.12.1.5.1/monacoCoinCore-0.12.1.5.1-linux64-cli.taz.gz'
tar xzvf monacoCoinCore-0.12.1.5.1-linux64-cli.taz.gz
chmod +x monacoCoind monacoCoin-tx monacoCoin-cli

# Build the library and install to our prefix
#cd db-4.8.30.NC/build_unix/ks 0ak
#  Note: Do a static build so that it can be embedded into the executable, instead of having to find a .so at runtime
../dist/configure --enable-cxx --disable-shared --with-pic --prefix=$BDB_PREFIX
make install

# Configure BITRADIO Core to use our own-built instance of BDB
cd $BITRADIO_ROOT
./autogen.sh
./configure LDFLAGS="-L${BDB_PREFIX}/lib/" CPPFLAGS="-I${BDB_PREFIX}/include/" # (other args...)

chmod 777 ./db.sh

make -f makefile.unix # Headless

