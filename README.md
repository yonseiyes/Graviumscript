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

# Next Step: Wait until the reindex has complete and the wallet has sync’d

./monacoCoin-cli masternode status

#This is what you’re waiting to see:
#AssetId 999, all trues, one false, and a FINISHED. 
{
   “AssetID”: 999,
   “AssetName”: “MASTERNODE_SYNC_FINISHED”,
   “Attempt”: 0,
   “IsBlockchainSynced”: true,
   “IsMasternodeListSynced”: true,
   “IsWinnersListSynced”: true,
   “IsSynced”: true,
   “IsFailed”: false
}
```
## Set-up of crontab
```sh
crontab -e
*/5 * * * * cd /home/YOURUSERNAME/sentinel && ./venv/bin/python bin/sentinel.py 2>&1 >> sentinel-cron.log

# Make sure you:
# 1) Change USERNAME to your username.
# 2) Hit enter to create another line at the end after this line, or the file will not work.

#Press Control-X to save and exit.
```
## Edit masternode.conf
```sh
#You can create masternode.conf in local control wallet. 

YOUR_MASTERNODE_ALIAS VPS_IP:24157 MasternodePrivkey TXID OutputIndex
```
## Starting Masternode in Console of Control wallet
```sh
masternode start-alias YOUR_MASTERNODE_ALIAS

# To confirm whether your masternode is working properly, type as below in VPS 
./monacoCoin-cli masternode status
```

that's all! enjoy masternode 
