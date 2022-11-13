#!/bin/sh

MODULE_PATH="$( cd "$( dirname "$0" )" && pwd -P )"
PROJECT_PATH=${MODULE_PATH%/*}

cp -r $MODULE_PATH/template/* $PROJECT_PATH

pip3 install virtualenv
python3 -m virtualenv venv
source venv/bin/activate
pip3 install -r $MODULE_PATH/requirements.txt
