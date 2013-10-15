#!/bin/bash
function pokemotd {

# Reset
local OFF="\[\033[0;00m\]" # Text reset

local BLACK="\[\033[0;30m"   # Black
local RED="\[\033[0;31m"   # Red
local GREEN="\[\033[0;32m"   # Green
local YELLOW="\[\033[0;33m"   # Yellow
local BLUE="\[\033[0;34m"   # Blue
local PURPLE="\[\033[0;35m"   # Purple
local CYAN="\[\033[0;36m"   # Cyan
local WHITE="\[\033[0;37m"   # White

# Bold
local BBLACK="\[\033[1;30m"   # Black
local BRED="\[\033[1;31m"   # Red
local BGREEN="\[\033[1;32m"   # Green
local BYELLOW="\[\033[1;33m"   # Yellow
local BBLUE="\[\033[1;34m"   # Blue
local BPURPLE="\[\033[1;35m"   # Purple
local BCYAN="\[\033[1;36m"   # Cyan
local BWHITE="\[\033[1;37m"   # White
# Underline
local UBLACK="\[\033[4;30m"   # Black
local URED="\[\033[4;31m"   # Red
local UGREEN="\[\033[4;32m"   # Green
local UYELLOW="\[\033[4;33m"   # Yellow
local UBLUE="\[\033[4;34m"   # Blue
local UPURPLE="\[\033[4;35m"   # Purple
local UCYAN="\[\033[4;36m"   # Cyan
local UWHITE="\[\033[4;37m"   # White
# Background
local ON_BLACK="\[\033[40m"     # Black
local ON_RED="\[\033[41m"     # Red
local ON_GREEN="\[\033[42m"     # Green
local ON_YELLOW="\[\033[43m"     # Yellow
local ON_BLUE="\[\033[44m"     # Blue
local ON_PURPLE="\[\033[45m"     # Purple
local ON_CYAN="\[\033[46m"     # Cyan
local ON_WHITE="\[\033[47m"     # White
# High Intensity
local IBLACK="\[\033[0;90m"   # Black
local IRED="\[\033[0;91m"   # Red
local IGREEN="\[\033[0;92m"   # Green
local IYELLOW="\[\033[0;93m"   # Yellow
local IBLUE="\[\033[0;94m"   # Blue
local IPURPLE="\[\033[0;95m"   # Purple
local ICYAN="\[\033[0;96m"   # Cyan
local IWHITE="\[\033[0;97m"   # White
# Bold High Inte
local BIBLACK="\[\033[1;90m"   # Black
local BIRED="\[\033[1;91m"   # Red
local BIGREEN="\[\033[1;92m"   # Green
local BIYELLOW="\[\033[1;93m"   # Yellow
local BIBLUE="\[\033[1;94m"   # Blue
local BIPURPLE="\[\033[1;95m"   # Purple
local BICYAN="\[\033[1;96m"   # Cyan
local BIWHITE="\[\033[1;97m"   # White
# High Intensitybackgrounds
local ON_IBLACK="\[\033[0;100m"  # Black
local ON_IRED="\[\033[0;101m"  # Red
local ON_IGREEN="\[\033[0;102m"  # Green
local ON_IYELLOW="\[\033[0;103m"  # Yellow
local ON_IBLUE="\[\033[0;104m"  # Blue
local ON_IPURPLE="\[\033[0;105m"  # Purple
local ON_ICYAN="\[\033[0;106m"  # Cyan
local ON_IWHITE="\[\033[0;107m"  # Whitelocal 


case $TERM in
    xterm*)
        TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
    *)
        TITLEBAR=""
        ;;
esac

PS1="${TITLEBAR}\
[\u@$IYELLOW\h$OFF \w]\$ "

}

