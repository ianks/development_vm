#!/usr/bin/env bash

apt-get update
apt-get -y dist-upgrade

# tap repos
apt-get install -y python-software-properties

# git
add-apt-repository ppa:git-core/ppa

# tmux/vim/etc.
add-apt-repository ppa:pi-rho/dev

# tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

# rmtrash
wget https://raw.githubusercontent.com/PhrozenByte/rmtrash/master/rmdirtrash -P /usr/local/bin
wget https://raw.githubusercontent.com/PhrozenByte/rmtrash/master/rmtrash -P /usr/local/bin
chmod +x /usr/local/bin/rmtrash
chmod +x /usr/local/bin/rmdirtrash

# docker
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

# mongo
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# packages
apt-get update
apt-get install -y \
  build-essential \
  curl \
  git \
  libboost-all-dev \
  libbz2-dev \
  libcurl4-openssl-dev \
  libpq-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  libyaml-dev \
  parallel \
  mongodb-org \
  mysql-client \
  openjdk-7-jdk \
  postgresql \
  silversearcher-ag \
  sqlite3 \
  tmux \
  trash-cli \
  valgrind \
  vim-gtk \
  wget \
  xclip \
  zlib1g-dev \
  zsh
