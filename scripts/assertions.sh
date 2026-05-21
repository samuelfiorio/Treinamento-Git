#!/usr/bin/env bash

fail() {
  echo "❌ $1"
  exit 1
}

pass() {
  echo "✅ $1"
}

assert_file_exists() {
  local file="$1"
  [[ -f "$file" ]] || fail "Arquivo esperado não encontrado: $file"
}

assert_contains() {
  local file="$1"
  local expected="$2"
  grep -qi "$expected" "$file" || fail "O arquivo $file deveria conter: $expected"
}

assert_no_conflict_markers() {
  if grep -R "^<<<<<<<\|^=======\|^>>>>>>>" app docs 2>/dev/null; then
    fail "Ainda existem marcadores de conflito no projeto."
  fi
}

assert_clean_worktree() {
  if [[ -n "$(git status --porcelain)" ]]; then
    git status --short
    fail "A working tree deve estar limpa. Faça commit das alterações necessárias."
  fi
}
