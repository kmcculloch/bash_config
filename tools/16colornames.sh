#!/usr/local/bin/bash

declare -A colors

colors[Black]='\033[0;30m'
colors[Red]='\033[0;31m'
colors[Green]='\033[0;32m'
colors[Yellow]='\033[0;33m'
colors[Blue]='\033[0;34m'
colors[Purple]='\033[0;35m'
colors[Cyan]='\033[0;36m'
colors[White]='\033[0;37m'
colors[BBlack]='\033[1;30m'
colors[BRed]='\033[1;31m'
colors[BGreen]='\033[1;32m'
colors[BYellow]='\033[1;33m'
colors[BBlue]='\033[1;34m'
colors[BPurple]='\033[1;35m'
colors[BCyan]='\033[1;36m'
colors[BWhite]='\033[1;37m'

for i in "${!colors[@]}"
do
  echo -e "${colors[$i]}$i\033[0m"
done

