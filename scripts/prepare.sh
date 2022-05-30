prepare_dir() {
    for dir in "$@"; do
        local exists
        exists=$(path_exists "$dir")
        if [ "$exists" -ne 0 ]; then
            mkdir -p "$dir"
        fi
    done
  return 0
}

prepare_file() {
    for file_path in "$@"; do
        local exists
        exists=$(path_exists "$file_path")
        if [ "$exists" -ne 0 ]; then
            local parent
            parent=$(dirname "$file_path")
            prepare_dir "$parent"
            touch "$file_path"
        fi
    done
    return 0
}
