#!/bin/bash

for bashrc_config in ~/.bash/*[^~] ; do
    source $bashrc_config
done

test -f ~/.bashrc_local && source ~/.bashrc_local

