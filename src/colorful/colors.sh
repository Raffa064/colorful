# Style codes
Sr="\e[0m" # Reset 
Sb="\e[1m" # Bold
St="\e[2m" # Thin
Si="\e[3m" # Italic
Su="\e[4m" # Underline
SB="\e[5m" # Blink
SI="\e[6m" # Inverse (Deprecated)
SR="\e[7m" # Reverse
Sh="\e[8m" # Hidden
Ss="\e[9m" # Strikethrough

# Foreground colors
fb="\e[30m"
fr="\e[31m"
fg="\e[32m"
fy="\e[33m"
fB="\e[34m"
fp="\e[35m"
fc="\e[36m"
fw="\e[37m"

# Background colors
bb="\e[40m"
br="\e[41m"
bg="\e[42m"
by="\e[43m"
bB="\e[44m"
bp="\e[45m"
bc="\e[46m"
bw="\e[47m"

function color_code() {
  local mode="$1"
  local r="$2"
  local g="$3"
  local b="$4"
  local style="$5"

  case "$mode" in
    bg) mode=4;;
    fg) mode=3;;
  esac

  case "$style" in
    b|bold)          style="1;";;
    t|thin)          style="2;";;
    i|italic)        style="3;";;
    u|underline)     style="4;";;
    B|blink)         style="5;";;
    r|reverse)       style="6;";;
    I|inverse)       style="7;";;
    h|hidden)        style="8;";;
    s|strikethrough) style="9;";;
    *|normal)        style="";;                
  esac

  echo "\e[$style${mode}8;2;${r};${g};${b}m"
}
