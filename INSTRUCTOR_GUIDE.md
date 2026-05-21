# Guia para instrutores

## Como publicar este treinamento no GitLab

1. Crie um projeto novo no GitLab.
2. Suba este conteúdo na branch `main`.
3. Proteja a branch `main` para impedir pushes dos alunos.
4. Configure o projeto como template, fork base ou use automação para criar uma cópia por aluno.
5. Oriente cada aluno a trabalhar apenas na própria cópia.

## Estratégia de correção

Cada exercício possui um `check.sh` local e o GitLab CI chama `scripts/ci-validate.sh` quando o aluno faz push nas branches esperadas.

Branches avaliadas automaticamente:

- `develop`
- `feature/task-list`
- `feature/about-page`

## Sugestão de acompanhamento

Peça que os alunos abram merge requests depois do pipeline passar:

- `develop` pode ser comparada com `main` no exercício 01.
- `feature/task-list` pode ser aberta contra `develop` no exercício 02.
- `feature/about-page` pode ser aberta contra `develop` no exercício 03.

## Observação sobre o exercício de conflito

O conflito é gerado localmente pelo script `exercises/03-merge-conflict/setup.sh`. Isso evita manter branches quebradas no repositório base e permite que cada aluno tenha uma experiência reprodutível.
