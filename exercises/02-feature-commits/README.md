# Exercício 02 — Desenvolvendo uma pequena feature

## Contexto

Agora que o projeto já possui uma branch de integração, você deverá desenvolver uma alteração isolada em uma branch própria de feature.

A equipe quer começar a registrar, dentro da aplicação, uma lista simples de etapas do treinamento. O arquivo inicial já existe em `app/tasks.md`, mas ainda está incompleto.

## Objetivo

Implementar a primeira versão dessa lista de tarefas de forma incremental, usando commits que mostrem a evolução do trabalho.

## O que deve ser entregue

Ao final do exercício, deve existir uma branch de feature criada a partir da branch de integração.

Nessa branch, o arquivo `app/tasks.md` deve representar uma lista útil para alguém que está fazendo o treinamento. A lista precisa cobrir as principais etapas práticas que a pessoa executará durante o curso.

O histórico da branch deve mostrar uma evolução compreensível do trabalho, em mais de um commit.

## Restrições

- Não desenvolva a feature diretamente na branch de integração.
- Não entregue tudo em um único commit.
- Não use mensagens genéricas de commit, como `update`, `fix`, `changes`, `wip` ou similares.
- Não altere arquivos que não estejam relacionados à feature.
- Não reescreva o histórico de branches compartilhadas.

## Validação

Depois de concluir sua solução, execute:

```bash
./scripts/validate.sh
```

Se a validação passar, envie sua branch para o GitLab.

## Dicas

Antes de começar, garanta que sua branch de integração local esteja atualizada.

Durante o exercício, pense em como você dividiria a entrega para facilitar uma futura revisão de código. Cada commit deve representar uma etapa lógica do desenvolvimento.
