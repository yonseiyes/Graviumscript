#sentinel_install.sh
git clone https://github.com/monacocoin-net/sentinel.git
cd sentinel
virtualenv ./venv
./venv/bin/pip install -r requirements.txt
vi sentinel.conf
./venv/bin/py.test ./test
