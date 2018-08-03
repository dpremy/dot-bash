#!/usr/bin/env bash

# uncomment next line to enable script debugging
#set -x

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# source all numbered files in ${HOME}/.bash/
for bashrc_config in "${HOME}/.bash/"[0-9]*[^~] ; do
    source "${bashrc_config}"
done

test -f "${HOME}/.bashrc_local" && source "${HOME}/.bashrc_local"

#disable debugging
set +x
