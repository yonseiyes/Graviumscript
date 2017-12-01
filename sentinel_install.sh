#sentinel_install.sh

#Step 1) Install the prerequisites
sudo apt-get update
sudo apt-get install -y git python-virtualenv

#Step 2) If you are not already there, navigate to your .innovacore folder
cd .innovacore

#Step 3) Clone sentinel, switch to the sentinel directory
git clone https://github.com/monacocoin-net/sentinel.git
cd sentinel

#Step 4) Create virtual python environment
virtualenv ./venv
    #If this command fails, try installing this package:):
#sudo apt-get install -y virtualenv

#Step 5) Install sentinel dependencies
./venv/bin/pip install -r requirements.txt

vi sentinel.conf
./venv/bin/py.test ./test
