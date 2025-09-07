#!/bin/bash

USERCONFIG="$HOME/.config/nvim"


if [[ -f "$USERCONFIG/init.lua" && -d "$USERCONFIG/lua" ]]; then
    echo "Copying User config -> $(pwd)"
    cp -f "$USERCONFIG/init.lua" "$CWD/init.lua"
    cp -f "$USERCONFIG/lua" "$CWD/lua"
else
    echo "ERROR:USERCONFIG IS NOT COMPLETED. Stopping."
fi
