function __git.init
  function __git.create_abbr -d "Create Git plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]

    # TODO: global scope abbr will be default in fish 3.6.0
    abbr -a -g $name $body
  end

  function __git.distance_from_head -d "Set distance from HEAD"
    if set -q $argv[1]
      $argv[1]
    else
      return 10
    end
  end

  function __git.rebase_interactive_head_relative -d "Rebase from HEAD realative position"
    set -l distance (__git.distance_from_head $argv[1])
    git rebase --interactive HEAD~$distance
  end

  function __git.log_tree -d "Show tree formatted git logs"
    git log --pretty=format:'%C(yellow)%h%C(reset) -%C(auto)%d%C(reset) %s    %C(magenta bold)<%an>%C(reset) %C(blue)(%cr)%C(reset) %C(cyan dim)%ad%C(reset)' --graph --all
  end

  __git.create_abbr g          git
  __git.create_abbr ga         git add
  __git.create_abbr gaa        git add --all
  __git.create_abbr gc         git commit -v
  __git.create_abbr gca        git commit -v --amend
  __git.create_abbr gcan       git commit -v --amend --no-edit
  __git.create_abbr gcm        git commit -m
  __git.create_abbr gco        git checkout
  __git.create_abbr gcom       git checkout \(__git.default_branch\)
  __git.create_abbr gpf        git push --force-with-lease
  __git.create_abbr gpl        git pull
  __git.create_abbr gpu        git push --set-upstream origin \(__git.current_branch\) 
  __git.create_abbr grbm       git rebase \(__git.default_branch\)
  __git.create_abbr grbih      __git.rebase_interactive_head_relative
  __git.create_abbr grbim      git rebase \(__git.default_branch\) --interactive
  __git.create_abbr gsl        git stash list
  __git.create_abbr gsp        git stash pop
  __git.create_abbr gst        git status
  __git.create_abbr gsu        git stash -u
  __git.create_abbr gtr        __git.log_tree
end

