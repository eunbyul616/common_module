#!/bin/sh

PROJECT_PATH="$( cd "$( dirname "$0" )" && pwd -P )"

cp -r $PROJECT_PATH/common_module/template/* $PROJECT_PATH

pip3 install virtualenv
python3 -m virtualenv venv
source venv/bin/activate
pip3 install -r $PROJECT_PATH/common_module/requirements.txt
