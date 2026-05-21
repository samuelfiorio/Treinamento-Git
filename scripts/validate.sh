#!/usr/bin/env bash
set -euo pipefail

branch="$(git branch --show-current)"

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
    echo "Branch atual: $branch"
    echo "Não há validação automática configurada para esta branch."
    echo "Use uma destas branches: develop, feature/task-list, feature/about-page."
    exit 1
    ;;
esac
