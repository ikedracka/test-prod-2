#!/bin/sh

echo --------------------------------------------------------------------------
echo "Follow this instruction to permit exection on macos::"
echo "Go to System Preferences -> Security & Privacy -> General and enable any"
echo "blocked app from Allow apps downloaded from pane at the bottom of the"
echo "window."
echo --------------------------------------------------------------------------
echo

CFG_DIR=~/.wpe
CFG_FILE=~/.wpe/config.yaml
if [ ! -f "$CFG_FILE" ]; then
    echo "Setting up $CFG_FILE wpe cli config file."
    mkdir -p $CFG_DIR
    cp config.yaml $CFG_FILE
    chmod 600 $CFG_FILE
fi

./wpe.cli "$@"
