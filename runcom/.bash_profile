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

# 17hats rails database url
export DATABASE_URL="mysql2://root:enoch@localhost/suitesetup?socket=/var/run/mysqld/mysqld.sock"
