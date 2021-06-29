#!/bin/bash
set -euo pipefail
program=${0##*/} # basename $0

usage () {
    >&2 printf 'Usage: %s [Region/City]\n' "$program"
    >&2 printf 'Set the system timezone\n'
    >&2 printf 'Will run tz-select to pick timezone if none given.\n'
}

# Process arguments
if [[ $# -gt 1 ]]; then  # 0 or 1 arguments only
    usage; exit 1
fi
if [[ $# -eq 0 ]]; then  # no timezone given - prompt
    timezone=$(tzselect)
else
    timezone=$1  # in timedatactl verificaiton we trust
fi

sudo timedatectl set-timezone "$timezone"

# `timedatectl set-timezone` doesn't update `/etc/timezone`
# https://unix.stackexchange.com/q/451709/143394
 <<<"$timezone" sudo tee /etc/timezone &> /dev/null

printf '\ntimedatectl says:\n'
timedatectl

# Update xfce4-panel clock
# https://unix.stackexchange.com/a/227405/143394
if property=$(xfconf-query -c xfce4-panel --list | grep timezone); then
    if [[ $(wc -l <<<"$property") -eq 1 ]]; then # only one clock widget
        xfconf-query -c xfce4-panel -p "$property" -s "$timezone"
        printf '\nUpdated xfce4-panel clock timezone to: %s\n' "$timezone"
    else
        >&2 printf 'Not changing multiple xfce4-panel properties:\n%s\n' "$property"
    fi
fi
