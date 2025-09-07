#!/bin/bash

USERCONFIG="$HOME/.config/nvim"
CWD="$(pwd)"


if [[ -f "$USERCONFIG/init.lua" && -d "$USERCONFIG/lua" ]]; then
    echo "Copying User config -> $CWD"
    cp -f "$USERCONFIG/init.lua" "$CWD/init.lua"
    cp -rf "$USERCONFIG/lua/." "$CWD/lua/"
else
    echo "ERROR:USERCONFIG IS NOT COMPLETED. Stopping."
fi
