################################################################################
# SDKMan
################################################################################
# sdkman
dots_func_log "[sdkman] set SDKMAN_DIR"
export SDKMAN_DIR=$DOTS_X/sdkman

# export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
# dots_func_log "prepared GRADLE_USER_HOME"
# prepare_dir $GRADLE_USER_HOME

# maven
# TODO: needs doc
# command_exists mvn && mvn -gs "$XDG_CONFIG_HOME"/maven/settings.xml

if [ -n "$SDKMAN_DIR" ] && [ ! -f "$SDKMAN_DIR/bin/sdkman-init.sh" ]; then
  dots_func_log "[sdkman] installing sdkman..."
  curl -s "https://get.sdkman.io?rcupdate=false" | bash
  dots_func_log "[sdkman] installed"
fi

dots_func_log "[sdkman] initializing..."
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
dots_func_log "[sdkman] initialized, ready"

dots_func_newline

