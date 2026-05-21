#!/usr/bin/env bash
set -euo pipefail
source scripts/assertions.sh

branch="${CI_COMMIT_BRANCH:-$(git branch --show-current)}"
[[ "$branch" == "feature/about-page" ]] || fail "Este exercício deve ser entregue na branch feature/about-page. Branch atual: $branch"

assert_file_exists "app/about.md"
assert_no_conflict_markers
assert_contains "app/about.md" "exercícios práticos"
assert_contains "app/about.md" "develop"
assert_contains "app/about.md" "code review"
assert_clean_worktree

if git rev-parse --verify origin/develop >/dev/null 2>&1; then
  if ! git merge-base --is-ancestor origin/develop HEAD; then
    fail "A branch feature/about-page deve conter as mudanças da develop. Faça merge da develop e resolva o conflito."
  fi
fi

resolution_commits="$(git log --format=%s -n 5 | grep -Ei 'merge|conflito|resolve|resol' || true)"
[[ -n "$resolution_commits" ]] || fail "Esperava encontrar um commit recente indicando merge ou resolução de conflito."

pass "Exercício 03 validado com sucesso."
