if status is-interactive
    # Commands to run in interactive sessions can go here

    # Init Starship prompt
    starship init fish | source

    # Autostart zellij
    if set -q ZELLIJ; or set -q TERM_PROGRAM
    else 
        zellij
    end
end

# tabtab source for packages
# uninstall by removing these lines
# [ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

rvm default

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

