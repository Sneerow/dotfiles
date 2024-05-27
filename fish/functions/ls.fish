function ls --wraps='exa --icons' --description 'alias ls exa --icons --sort type'
  exa --all --icons --header --git --sort type $argv
        
end
