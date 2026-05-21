#!/usr/bin/env bash
set -euo pipefail
source scripts/assertions.sh

branch="${CI_COMMIT_BRANCH:-$(git branch --show-current)}"
[[ "$branch" == "develop" ]] || fail "Este exercício deve ser entregue na branch develop. Branch atual: $branch"

assert_file_exists "docs/plano-de-desenvolvimento.md"
assert_contains "docs/plano-de-desenvolvimento.md" "develop"
assert_contains "docs/plano-de-desenvolvimento.md" "feature"
assert_contains "docs/plano-de-desenvolvimento.md" "merge"
assert_no_conflict_markers
assert_clean_worktree

pass "Exercício 01 validado com sucesso."
