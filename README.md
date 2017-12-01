## Monoeci Install&Build Shell

![alt text](https://pbs.twimg.com/media/DPVKRTkW0AA69q5.jpg)

You can find Monoeci documents from [Monoeci Github](https://github.com/monacocoin-net/monacoCoin-Core)

System Requirements

 * Ubuntu 14.04 x64


## How to use

```sh
sudo apt-get install git
git clone https://github.com/yonseiyes/Monoeci.git
./Monoeci/install.sh

./monacoCoind #to run wallet
```

## Edit conf

Open conf file 
```sh
vi ./.monacoCoinCore/monacoCoin.conf
```

Paste conf
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

```sh
./monacoCoind #to run wallet
./monacoCoin-cli mnsync status
```

## How to update 
```sh
cd monacoCoin_qtbuild
git pull
./update.sh
```

that's all! enjoy masternode 
