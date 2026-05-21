# Convenções usadas no treinamento

## Branches

- `main`: estado inicial estável do treinamento.
- `develop`: integração dos exercícios.
- `feature/<nome>`: desenvolvimento de funcionalidades.

## Commits

Use mensagens no imperativo ou no presente, com intenção clara.

Bons exemplos:

- `Cria plano de desenvolvimento do treinamento`
- `Adiciona estrutura inicial da lista de tarefas`
- `Resolve conflito na página sobre`

Evite:

- `fix`
- `update`
- `wip`
- `changes`

## Merge requests

Para uso em GitLab, uma boa extensão do treinamento é pedir que o aluno abra merge requests:

1. `feature/task-list` → `develop`
2. `feature/about-page` → `develop`

Assim o instrutor pode ver tanto o pipeline quanto o histórico e a discussão do MR.
