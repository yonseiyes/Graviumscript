## Monoeci Install&Build Shell

![alt text](https://pbs.twimg.com/media/DPVKRTkW0AA69q5.jpg)

You can find Monoeci documents from [Monoeci Github](https://github.com/monacocoin-net/monacoCoin-Core)

System Requirements

 * Ubuntu 14.04 x64


## How to use

```sh
sudo apt-get update
sudo apt-get install git
git clone https://github.com/yonseiyes/Monoeci.git
./Monoeci/install.sh

./monacoCoind #run wallet and Press Control+C
```

## Edit monacoCoin.conf

Open conf file 
```sh
vi ./.monacoCoinCore/monacoCoin.conf
```

Copy & Paste 

  vi usage : 
   
    1. type 'i' for insert-mode
    
    2. copy & paste below & insert some informations
    
    3. press 'ESC' & type ':wq' for saving.

```sh
rpcuser=
rpcpassword=
rpcallowip=127.0.0.1
server=1
listen=1
daemon=1
maxconnections=24
masternode=1
masternodeprivkey=
externalip=
```

## Running Wallet Daemon
```sh
./monacoCoind 
./monacoCoin-cli mnsync status
```
## Sentinel Installation
```sh
./Monoeci/sentinel_install.sh

vi sentinel.conf
# "monacoCoin_conf=/home/YOURUSERNAME/.monacoCoinCore/monacoCoin.conf"
# Fix YOURUSERNAME only.

./venv/bin/py.test ./test
# 20 passed...라고 뜬다면 성공입니다.

./venv/bin/python bin/sentinel.py
# You should see: “monacoCoind not synced with network! Awaiting full sync before running Sentinel.”
# This is exactly what we want to see at this stage


```
## How to update 
```sh
cd monacoCoin_qtbuild
git pull
./update.sh
```

that's all! enjoy masternode 
