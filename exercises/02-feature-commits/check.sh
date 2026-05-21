#!/usr/bin/env bash
set -euo pipefail
source scripts/assertions.sh

branch="${CI_COMMIT_BRANCH:-$(git branch --show-current)}"
[[ "$branch" == "feature/task-list" ]] || fail "Este exercício deve ser entregue na branch feature/task-list. Branch atual: $branch"

assert_file_exists "app/tasks.md"
assert_contains "app/tasks.md" "Preparar ambiente"
assert_contains "app/tasks.md" "Criar branch develop"
assert_contains "app/tasks.md" "Resolver conflito de merge"

base_ref="develop"
if git rev-parse --verify origin/develop >/dev/null 2>&1; then
  base_ref="origin/develop"
fi

commit_count="$(git rev-list --count "$base_ref"..HEAD)"
[[ "$commit_count" -ge 2 ]] || fail "A branch feature/task-list deve ter pelo menos 2 commits depois de $base_ref. Encontrados: $commit_count"

bad_messages="$(git log --format=%s "$base_ref"..HEAD | grep -Eix 'wip|fix|update|changes|ajuste|alteracao|alteração' || true)"
[[ -z "$bad_messages" ]] || fail "Há mensagens de commit vagas: $bad_messages"

short_messages="$(git log --format=%s "$base_ref"..HEAD | awk 'length($0) < 12 {print}' || true)"
[[ -z "$short_messages" ]] || fail "Há mensagens de commit curtas demais. Use descrições mais significativas: $short_messages"

assert_no_conflict_markers
assert_clean_worktree

pass "Exercício 02 validado com sucesso."
