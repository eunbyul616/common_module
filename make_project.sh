#!/bin/sh

MODULE_PATH="$( cd "$( dirname "$0" )" && pwd -P )"
PROJECT_PATH=${MODULE_PATH%/*}

# copy template 
cp -r $MODULE_PATH/template/* $PROJECT_PATH

# copy pyproject.toml file
cp $MODULE_PATH/pyproject.toml $PROJECT_PATH/

# copy .gitignore
cp MODULE_PATH/.gitignore $PROJECT_PATH/

# setting environment
#pip3 install virtualenv
#python3 -m virtualenv venv
#source venv/bin/activate

# install packages
#pip3 install -r $MODULE_PATH/requirements.txt

# poetry
poetry init
poetry config virtualenvs.in-project true
poetry shell
poetry install
