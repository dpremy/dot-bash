#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# source debugging functions
test -f "${HOME}/.bash/debug" && source "${HOME}/.bash/debug"

# create dummy log functions to prevent errors if ${HOME}/.bash/debug isn't sourced properly
if ! type log_debug &>/dev/null; then
  function log_emergency () { :; }; function log_alert () { :; }; function log_critical () { :; }; function log_error () { :; }; function log_warning () { :; }; function log_notice () { :; }; function log_info () { :; }; function log_debug () { :; }
else
  log_debug ".bashrc debug logging sourced and enabled"
fi

# source all numbered files in ${HOME}/.bash/
for bashrc_config in "${HOME}/.bash/"[0-9]*[^~] ; do
  log_info ".bashrc sourcing ${bashrc_config}"
  source "${bashrc_config}"
done

# source ${HOME}/.bashrc_local if found
if [ -f "${HOME}/.bashrc_local" ];then
  log_info ".bashrc sourcing ${HOME}/.bashrc_local"
  source "${HOME}/.bashrc_local"
else
  log_debug ".bashrc did not find ${HOME}/.bashrc_local, skipping"
fi
