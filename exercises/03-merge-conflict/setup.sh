#!/usr/bin/env bash
set -euo pipefail

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Sua working tree não está limpa. Faça commit, stash ou descarte as alterações antes de preparar o exercício."
  exit 1
fi

if ! git rev-parse --verify develop >/dev/null 2>&1; then
  echo "A branch develop não existe localmente. Faça o exercício 01 antes deste."
  exit 1
fi

git checkout develop

# Garante conteúdo base conhecido.
cat > app/about.md <<'BASE'
# Sobre o projeto

Este projeto ensina Git para pessoas que estão começando.
BASE

if ! git diff --quiet; then
  git add app/about.md
  git commit -m "Restaura texto base da página sobre"
fi

base_commit="$(git rev-parse HEAD)"

git branch -D feature/about-page >/dev/null 2>&1 || true
git checkout -b feature/about-page "$base_commit"

cat > app/about.md <<'FEATURE'
# Sobre o projeto

Este projeto ensina Git com exercícios práticos para pessoas que estão começando.
FEATURE

git add app/about.md
git commit -m "Adiciona foco prático na página sobre"

git checkout develop

cat > app/about.md <<'DEVELOP'
# Sobre o projeto

Este projeto ensina Git usando fluxo com develop e code review para pessoas que estão começando.
DEVELOP

git add app/about.md
git commit -m "Atualiza página sobre com fluxo de trabalho"

git checkout feature/about-page
set +e
git merge develop
merge_status=$?
set -e

if [[ "$merge_status" -eq 0 ]]; then
  echo "O merge não gerou conflito. Isso não era esperado. Verifique o estado do repositório."
  exit 1
fi

echo "Conflito criado com sucesso em app/about.md. Resolva o arquivo, faça git add e finalize com git commit."
