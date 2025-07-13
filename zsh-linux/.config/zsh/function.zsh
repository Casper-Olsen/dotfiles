# Commands
gitcc() {
  local remote="${1:-origin}"
  local branch
  branch=$(git remote show "$remote" 2>/dev/null | sed -n '/HEAD branch/s/.*: //p')
  git rev-list --count HEAD ^"$remote"/"$branch" 2>/dev/null
}
