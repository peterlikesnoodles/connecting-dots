path_exists() {
    if [ -d "$1" ] || [ -f "$1" ]; then
        echo 0
        return 0
    fi

    echo 1
    return 1
}
