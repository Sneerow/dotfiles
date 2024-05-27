function ls --wraps='eza --icons' --description 'alias ls eza --icons --sort type'
  eza --all --icons --header --git --sort type $argv
end
