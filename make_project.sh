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
# install pyenv, pyenv-virtualenv
# brew install pyenv
# brew install pyenv-virtualenv
brew install pipenv
pipenv --python 3.9.6
pipenv shell

# linux, mac os
#source venv/bin/activate

# install packages
pipenv install
#pip install -r $MODULE_PATH/requirements.txt

# poetry
#cd $PROJECT_PATH
#poetry config virtualenvs.in-project true
#poetry shell
#poetry install
