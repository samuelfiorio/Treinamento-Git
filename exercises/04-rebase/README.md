# Sugestão de exercício 04 — Rebase interativo

Este exercício ainda não possui validação automática pronta, mas é uma boa continuação.

## Objetivo sugerido

Ensinar o aluno a limpar o histórico antes de abrir um merge request.

## Ideia

1. Criar uma branch `feature/profile-card` a partir da `develop`.
2. Fazer 4 ou 5 commits pequenos, incluindo alguns commits ruins como `fix`, `wip` ou `ajuste`.
3. Usar rebase interativo para combinar commits relacionados e melhorar mensagens.
4. Validar que o histórico final tenha 2 ou 3 commits com mensagens claras.

## Comandos que poderiam ser explorados

```bash
git rebase -i develop
git log --oneline develop..HEAD
```
