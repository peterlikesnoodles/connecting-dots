dots_func_log () {
  # TODO: color
  RED_ON_GREEN='\033[1;33m'
  RESET='\033[0m'
  if [ "$DOTS_DEBUG" = true ]; then
      echo "${RED_ON_GREEN}[Dots]${RESET}" "$@"
  fi
}

dots_func_newline() {
  if [ "$DOTS_DEBUG" = true ]; then
      echo "\n"
  fi
}
