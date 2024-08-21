__load_abbr

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

pyenv init - | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/loupdallier/google-cloud-sdk/path.fish.inc' ]; . '/Users/loupdallier/google-cloud-sdk/path.fish.inc'; end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

export GITLAB_REGISTRY_TOKEN=glpat-DsJ3SfyCsEs_rPodpwzL
