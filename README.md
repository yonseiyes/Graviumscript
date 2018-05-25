## Gravium Install&Build Shell

![alt text](https://media.discordapp.net/attachments/437326359165927433/444823943866482699/Logo_DarkBG.png)

You can find Gravium documents from [Gravium Github](https://github.com/Gravium/gravium)

System Requirements

 * Ubuntu 16.04 x64


## How to use

```sh
git clone https://github.com/yonseiyes/Graviumscript;cd Graviumscript;bash masternode.sh

```

## Running Wallet Daemon
```sh
./graviumd -daemon

```
## Sentinel Installation
```sh

vi sentinel.conf
# "gravium_conf=/root/.graviumcore/gravium.conf"


./venv/bin/py.test ./test
# 20 passed...라고 뜬다면 성공입니다.

./venv/bin/python bin/sentinel.py
# You should see: “graviumd not synced with network! Awaiting full sync before running Sentinel.”
# This is exactly what we want to see at this stage

# Next Step: Wait until the reindex has complete and the wallet has sync’d

./gravium-cli masternode status

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
*/5 * * * * cd /root/sentinel && ./venv/bin/python bin/sentinel.py 2>&1 >> sentinel-cron.log

# Make sure you:
# 1) Change USERNAME to your username.
# 2) Hit enter to create another line at the end after this line, or the file will not work.

# type ':wq' to save & exit
```
## Edit masternode.conf
```sh
#You can create masternode.conf in local control wallet. 

YOUR_MASTERNODE_ALIAS VPS_IP:7979 MasternodePrivkey TXID OutputIndex
```
## Starting Masternode in Console of Control wallet
```sh
masternode start-alias YOUR_MASTERNODE_ALIAS

# To confirm whether your masternode is working properly, type as below in VPS 
./gravium-cli masternode status
```

That's all! Enjoy your Masternode!! - written by 돔말(dommal)
