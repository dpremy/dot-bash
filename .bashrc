#!/usr/bin/env bash

# uncomment next line to enable script debugging
#set -x

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

for bashrc_config in ~/.bash/*[^~] ; do
    source $bashrc_config
done

test -f ~/.bashrc_local && source ~/.bashrc_local

#disable debugging
set +x
