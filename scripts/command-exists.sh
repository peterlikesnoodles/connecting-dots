command_exists() {
    if type "$1" > /dev/null; then
        return 0
    fi
    return 1
}
