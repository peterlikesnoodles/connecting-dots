if [ $(path_exists $DOTS_X/scripts) -eq 0 ]; then
    export PATH="$PATH":"$DOTS_X/scripts"
fi