#!/usr/bin/env bash

apt-get update
apt-get -y dist-upgrade

# tap repos
apt-get install -y python-software-properties

# git
add-apt-repository ppa:git-core/ppa

# tmux/vim/etc.
add-apt-repository ppa:pi-rho/dev

# neo4j
wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add -
echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list

# zsh-completions
git clone git://github.com/zsh-users/zsh-completions.git /usr/local/share/zsh-completions

# tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

# rmtrash
wget https://raw.githubusercontent.com/PhrozenByte/rmtrash/master/rmdirtrash -P /usr/local/bin
wget https://raw.githubusercontent.com/PhrozenByte/rmtrash/master/rmtrash -P /usr/local/bin
chmod +x /usr/local/bin/rmtrash
chmod +x /usr/local/bin/rmdirtrash

# docker
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

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
  mongodb \
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
