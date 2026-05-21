# Exercício 03 — Resolvendo conflito de merge com a `develop`

## Objetivo

Você vai gerar um conflito real entre a branch `develop` e uma branch de feature, resolver o conflito e registrar a resolução em um commit.

Neste exercício, o conflito acontece em `app/about.md`.

## Preparação automática

A partir de qualquer branch limpa, rode:

```bash
./exercises/03-merge-conflict/setup.sh
```

Esse script vai:

1. Voltar para `develop`.
2. Criar ou atualizar a branch `feature/about-page`.
3. Fazer uma alteração em `app/about.md` na feature.
4. Fazer uma alteração concorrente no mesmo trecho em `develop`.
5. Tentar fazer merge da `develop` na feature, gerando conflito.

Ao final, você deve estar na branch `feature/about-page` com um conflito aberto.

## Sua tarefa

Abra `app/about.md`, remova os marcadores de conflito e escreva uma versão final que preserve as duas ideias:

- O projeto tem exercícios práticos.
- O projeto usa fluxo com develop e code review.

Depois finalize o merge:

```bash
git add app/about.md
git commit
```

Valide:

```bash
./scripts/validate.sh
```

Envie para o GitLab:

```bash
git push -u origin feature/about-page
```

## Critérios de aceite

- A branch deve se chamar `feature/about-page`.
- Não pode haver marcadores de conflito no projeto.
- `app/about.md` deve conter as ideias de `exercícios práticos`, `develop` e `code review`.
- A branch deve conter um merge commit ou um commit de resolução depois da preparação.
- A working tree deve estar limpa.
