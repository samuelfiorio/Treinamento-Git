# Sugestão de exercício 05 — Stash e troca de contexto

Este exercício ainda não possui validação automática pronta, mas é útil para simular interrupções do dia a dia.

## Objetivo sugerido

Ensinar o aluno a salvar trabalho incompleto, trocar de branch e depois retomar a alteração.

## Ideia

1. Começar uma alteração incompleta em `feature/task-list`.
2. Receber uma demanda urgente em outra branch.
3. Usar `git stash` para guardar o trabalho temporariamente.
4. Trocar de branch, fazer a correção urgente e commitar.
5. Voltar para a feature original e aplicar o stash.

## Comandos que poderiam ser explorados

```bash
git stash push -m "Trabalho parcial da lista de tarefas"
git stash list
git stash pop
```
