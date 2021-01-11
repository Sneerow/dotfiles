typeset -U PATH path

# Set XDG dirs
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}

# Key input delay equal to 10ms
export KEYTIMEOUT=1

# Disable history for less
export LESSHISTFILE=-

# Vim
export VIMDOTDIR=$XDG_CONFIG_HOME/vim
export VIMINIT="source $VIMDOTDIR/vimrc"

# Common apps
export BROWSER=firefox
export EDITOR=vim
export VISUAL=$EDITOR
export PAGER=most

# Zsh
export ZDOTDIR=$HOME/.config/zsh

# Xinit
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc

# GnuPG
export GNUPGHOME="${XDG_CONFIG_HOME}"/gnupg

# Rust
export RUST_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo

# npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
