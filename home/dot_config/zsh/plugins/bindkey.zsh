#!/bin/zsh

bindkey "^I" menu-select
bindkey "$terminfo[kcbt]" menu-select
bindkey -M menuselect "^I" menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete
