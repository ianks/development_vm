#!/usr/bin/env bash

# Installation of pyenv, nodenv, and rbenv

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/OiNutter/nodenv.git ~/.nodenv
git clone git://github.com/yyuu/pyenv.git ~/.pyenv

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone git://github.com/OiNutter/node-build.git ~/.nodenv/plugins/node-build
git clone git://github.com/ianks/nodenv-sudo.git ~/.nodenv/plugins/nodenv-sudo
git clone https://github.com/ianheggie/rbenv-binstubs.git ~/.rbenv/plugins/rbenv-binstubs.git
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"

eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

rbenv install 2.1.3
pyenv install 2.7.8
nodenv install 0.10.30

rbenv global 2.1.3
pyenv global 2.7.8
nodenv global 0.10.30

rbenv shell 2.1.3
pyenv shell 2.7.8
nodenv shell 0.10.30

gem install bundler pry rails
pip install IPython
npm install -g grunt grunt-cli gulp bower
