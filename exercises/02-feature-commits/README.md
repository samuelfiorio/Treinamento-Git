# Exercício 02 — Construindo uma feature com commits significativos

## Objetivo

Você vai simular a construção de uma nova funcionalidade usando uma branch de feature criada a partir da `develop`.

A feature será uma pequena lista de tarefas em `app/tasks.md`.

## Preparação

Comece a partir da `develop` atualizada:

```bash
git checkout develop
git pull origin develop
```

Crie a branch da feature:

```bash
git checkout -b feature/task-list
```

## Tarefa

Edite `app/tasks.md` para representar uma lista de tarefas simples.

O arquivo final precisa conter pelo menos estas três tarefas:

- Preparar ambiente
- Criar branch develop
- Resolver conflito de merge

Faça pelo menos **dois commits** na branch `feature/task-list`.

Exemplo de divisão aceitável:

```bash
# primeiro commit
git add app/tasks.md
git commit -m "Adiciona estrutura inicial da lista de tarefas"

# segundo commit
git add app/tasks.md
git commit -m "Inclui tarefas principais do treinamento"
```

Evite mensagens vagas como:

- `update`
- `fix`
- `changes`
- `wip`

## Validação

```bash
./scripts/validate.sh
```

Envie para o GitLab:

```bash
git push -u origin feature/task-list
```

## Critérios de aceite

- A branch deve se chamar `feature/task-list`.
- A branch deve ter pelo menos dois commits depois da `develop`.
- As mensagens dos commits devem ser minimamente descritivas.
- `app/tasks.md` deve conter as três tarefas obrigatórias.
- A working tree deve estar limpa.
