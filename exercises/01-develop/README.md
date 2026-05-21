# Exercício 01 — Criando a branch `develop`

## Objetivo

Você vai criar a branch `develop` a partir da `main`, fazer uma pequena alteração de planejamento e enviar essa branch para o GitLab.

## Passos

Confira que você está na `main`:

```bash
git branch
```

Crie a branch `develop`:

```bash
git checkout -b develop
```

Crie o arquivo `docs/plano-de-desenvolvimento.md` com um pequeno plano do que será desenvolvido neste treinamento.

O arquivo precisa mencionar:

- `develop`
- `feature`
- `merge`

Faça o commit com uma mensagem clara:

```bash
git add docs/plano-de-desenvolvimento.md
git commit -m "Cria plano de desenvolvimento do treinamento"
```

Valide localmente:

```bash
./scripts/validate.sh
```

Envie para o GitLab:

```bash
git push -u origin develop
```

## Critérios de aceite

- A branch atual deve ser `develop`.
- O arquivo `docs/plano-de-desenvolvimento.md` deve existir.
- O arquivo deve mencionar `develop`, `feature` e `merge`.
- A working tree deve estar limpa.
