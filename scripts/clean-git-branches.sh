#!/bin/sh

delete_branches() {
  git fetch --prune
  local branches="$(git for-each-ref --shell --format='%(refname) %(push:short)')"
  while read -r branch; do
    if [[ $branch =~ "'refs/heads/(.*)' '(.*)'" ]]; then
      local local_branch=$match[1]
      local remote_branch=$match[2]
      if [[ $remote_branch == '' ]]; then
        # No remote was ever set for this branch so it probably contains new work
        continue
      fi

      if [[ $branches =~ "$remote_branch" ]]; then
        # The remote branch still exists so don't delete the local branch
        continue
      fi

      # The remote branch is set, but has been deleted. That's a good indication that the changes
      # were either merged in or are no longer needed so we can delete the branch
      echo "git branch -D $local_branch"
    fi
  done <<< "$branches"
}

cd ~/work
local projects="$(ls -1d *)"
while read -r project; do
  cd ~/work/$project
  delete_branches
done <<< "$projects"
