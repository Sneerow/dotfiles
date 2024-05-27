#! /bin/bash

rm /usr/local/bin/bvm || printf "bvm is not installed\n"
chmod 700 ~/.config/bin/bvm
ln -s ~/.config/bin/bvm /usr/local/bin/bvm
