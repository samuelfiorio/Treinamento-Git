#!/usr/bin/env bash
set -euo pipefail

branch="${CI_COMMIT_BRANCH:-$(git branch --show-current)}"

echo "Validando branch: $branch"

case "$branch" in
  develop)
    bash exercises/01-develop/check.sh
    ;;
  feature/task-list)
    bash exercises/02-feature-commits/check.sh
    ;;
  feature/about-page)
    bash exercises/03-merge-conflict/check.sh
    ;;
  *)
    echo "Branch sem validação configurada: $branch"
    exit 0
    ;;
esac
