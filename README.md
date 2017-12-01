## Monoeci Install&Build Shell

![alt text](https://pbs.twimg.com/media/DPVKRTkW0AA69q5.jpg)

You can find Monoeci documents from [Monoeci Github](https://github.com/monacocoin-net/monacoCoin-Core)

System Requirements

 * Ubuntu 14.04 x64
 * Minimum Storage 10GB
 * Minimum Memory 2GB

## How to use

```sh
git clone https://github.com/yonseiyes/Monoeci.git
./monacoCoin_qtbuild/install.sh

monacoCoind #to run wallet
```

## Edit conf

Open conf file 
```sh
vi ./.monacoCoinCore/monacoCoin.conf
```

Paste conf
```sh
rpcuser=[rpcusername]
rpcpassword=[rpcpassword]
rpcallowip=127.0.0.1
daemon=1
server=1
listen=1
masternode=1
masternodeprivkey=[masternodegenkey]
externalip=[serverip]
```

```sh
monacoCoind #to run wallet
```

## How to update 
```sh
cd monacoCoin_qtbuild
git pull
./update.sh
```

that's all! enjoy masternode 
