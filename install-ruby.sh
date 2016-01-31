#!/usr/bin/env bash

 source $HOME/.rvm/scripts/rvm

 rvm use --default --install $1

 shift
 cd 'code'

 echo "create gemset"
 rvm gemset create lrfantasy
 rvm gemset use lrfantasy

 if (( $# ))
 then gem install $@
 fi

 bundle install

 rvm cleanup all