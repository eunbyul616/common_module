#!/bin/sh

MODULE_PATH="$( cd "$( dirname "$0" )" && pwd -P )"
PROJECT_PATH=${MODULE_PATH%/*}

# copy template
cp -r $MODULE_PATH/template/* $PROJECT_PATH

# copy pyproject.toml file
#cp $MODULE_PATH/pyproject.toml $PROJECT_PATH/

# copy .gitignore
cp $MODULE_PATH/.gitignore $PROJECT_PATH/

# setting environment
echo "need python version 3.9"
pip3 install virtualenv
virtualenv venv --python=python3.9

# windows
source venv/Scripts/activate

# install packages
pip install -r $MODULE_PATH/requirements.txt

# poetry
#cd $PROJECT_PATH
#poetry config virtualenvs.in-project true
#poetry shell
#poetry install

