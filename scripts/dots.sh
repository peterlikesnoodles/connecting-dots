# dots_func_log () {
#   # TODO: color
#   RED_ON_GREEN='\033[1;33m'
#   RESET='\033[0m'
#   if [ "$DOTS_DEBUG" = true ]; then
#       echo "${RED_ON_GREEN}[Dots]${RESET}" "$@"
#   fi
# }

# path_exists() {
#     if [ -d "$1" ] || [ -f "$1" ]; then
#         echo 0
#         return 0
#     fi

#     echo 1
#     return 1
# }

alias_exists () {
  if alias $1 >/dev/null 2>&1; then
    echo 0
    return 0
  fi

    echo 1
    return 1
}

alias_p_npm () {
  if command_exists $1; then
    alias p=$1
  fi
}

alias_p_npm pnpm
