# git
alias gc="git commit"
alias gs="git status"
alias gS="git switch"
alias gP="git push"
alias gp="git pull"
alias gf="git fetch"
alias gco="git checkout"
alias gm="git merge"
alias gt="git tag"
alias gl="git log"
alias gw="git worktree"

# git flow
alias gflw="git flow"
alias gflwi="git flow init"
alias gflwfs="git flow feature start"
alias gflwrs="git flow release start"
alias gflwhs="git flow hotfix start"
alias gflwbs="git flow bugfix start"

# integrate with github cli to create pr
function gflwpr() {
  case "$1" in
    feature)
      gh pr create --base develop
      ;;
    bugfix)
      gh pr create --base develop
      ;;
    refactor)
      gh pr create --base develop
      ;;
    release)
      gh pr create --base main
      ;;
    hotfix)
      gh pr create --base main
      ;;
    *)
      echo "Usage: gflwpr {feature|release|refactor|hotfix|bugfix}"
      ;;
  esac
}

