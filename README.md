# Treinamento prático de Git

Este repositório é a base para um treinamento assíncrono de Git.

O objetivo é que cada aluno trabalhe em uma cópia própria do repositório no GitLab, faça os exercícios em branches específicas e use o pipeline do GitLab CI para validar automaticamente o resultado.

## Premissas do treinamento

- O repositório começa apenas com a branch `main`.
- O aluno deve criar uma branch `develop` a partir da `main`.
- Cada nova funcionalidade deve ser feita em uma branch `feature/...` criada a partir da `develop`.
- O aluno deve fazer commits pequenos e com mensagens significativas.
- O aluno deve resolver conflitos de merge de forma consciente, preservando as duas intenções de mudança quando fizer sentido.

## Requisitos para Windows

No Windows, use o terminal **Git Bash**, instalado junto com o Git for Windows.

Não use PowerShell ou CMD para executar os scripts `.sh`.

Comandos:

```bash
./exercises/01-develop/check.sh
./exercises/02-feature-commits/check.sh
./exercises/03-merge-conflict/setup.sh
./exercises/03-merge-conflict/check.sh

## Como usar

Clone sua cópia individual do repositório:

```bash
git clone <url-da-sua-copia>
cd git-training-base
```

Execute os exercícios na ordem:

1. `exercises/01-develop/README.md`
2. `exercises/02-feature-commits/README.md`
3. `exercises/03-merge-conflict/README.md`

Depois de cada exercício, rode o check local:

```bash
./scripts/validate.sh
```

E envie sua branch para o GitLab:

```bash
git push -u origin <nome-da-branch>
```

O GitLab CI também executará as validações automaticamente quando você fizer `push` nas branches esperadas.

## Branches usadas no treinamento

| Exercício | Branch esperada | Objetivo |
|---|---|---|
| 01 | `develop` | Criar a branch de integração a partir da `main` |
| 02 | `feature/task-list` | Criar uma feature com commits pequenos e mensagens significativas |
| 03 | `feature/about-page` | Resolver um conflito real de merge com a `develop` |

## Para instrutores

Este repo deve ser usado como template. Cada aluno deve trabalhar em uma cópia própria, por exemplo via fork, import do GitLab, GitLab Classroom-like workflow, ou automação via API.

O repositório base não deve receber pushes dos alunos.
