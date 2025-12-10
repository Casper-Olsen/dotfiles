# Commands

# Count the commits on a branch that have been made since the branch was created
gitcc() {
  local remote="${1:-origin}"
  local branch
  branch=$(git remote show "$remote" 2>/dev/null | sed -n '/HEAD branch/s/.*: //p')
  git rev-list --count HEAD ^"$remote"/"$branch" 2>/dev/null
}

# Automatically delete local Git branches whose remote tracking branches have been deleted
gitprune() {
  git remote prune origin
  git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
}

# Switch to new branch
gitnew() {
  git switch -c "$1"
}
