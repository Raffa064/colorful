reset="\e[0m"
bold="\e[1m"
under="\e[2m"
inverse="\e[3m"

fblack="\e[30m"
fred="\e[31m"
fgreen="\e[32m"
fyellow="\e[33m"
fblue="\e[34m"
fpurple="\e[35m"
fcyan="\e[36m"
fwhite="\e[37m"

bblack="\e[40m"
bred="\e[41m"
bgreen="\e[42m"
byellow="\e[43m"
bblue="\e[44m"
bpurple="\e[45m"
bcyan="\e[46m"
bwhite="\e[47m"

function debug() {
  echo -e "$fwhile$@"
}

function alert() {
  echo -e "$fyellow$@"
}

function sucess() {
  echo -e "$fgreen$@"
}

function error() {
  echo -e "$fred$@"
}
