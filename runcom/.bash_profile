if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

#Prevent flow control from messing up tmux prefix (ctrl-s)
stty -ixon

#Git Helpers
function parse_git_dirty {
  git diff --quiet HEAD &>/dev/null
  [[ $? == 1 ]] && echo " ⚠ "
}

function parse_branch {
  if [[ -d .git ]] ; then
    local branch=$(__git_ps1 "%s")
    [[ $branch ]] && echo " ($branch$(parse_git_dirty))"
  fi
}
export PS1='\[\033k\033\\\]\u \W$(parse_branch) $ '
