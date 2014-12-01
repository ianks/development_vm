#!/usr/bin/env bash

export PATH="$HOME/.nodenv/bin:$HOME/.rbenv/bin:$HOME/.pyenv/bin:$PATH"

parallel -j 4 --colsep ' ' git clone < env.txt
parallel -j 4 --colsep ' ' git clone < plugins.txt

eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

parallel -j 4 ::: "rbenv install 2.1.5" "rbenv install jruby-1.7.16.1" "pyenv install 2.7.8" "pyenv install 3.4.2" "nodenv install 0.10.33"

rbenv global 2.1.5
pyenv global 2.7.8
nodenv global 0.10.33

parallel -j 4 ::: "gem install bundler" "pip install IPython" "npm install -g grunt grunt-cli gulp bower"
