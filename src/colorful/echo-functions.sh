import colorful.colors

function echoe() {
  echo -e "$Sr$@$Sr"
}

function debug() {
  echoe "$fw$@"
}

function alert() {
  echoe "$fy$@"
}

function warning() {
  echoe "$fy$@"
}

function sucess() {
  echoe "$fg$@"
}

function error() {
  echoe "$fr$@"
}
