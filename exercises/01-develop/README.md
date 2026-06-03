# Exercício 01 — Preparando o fluxo de trabalho

## Contexto

Você recebeu um repositório inicial que representa a base de um pequeno projeto. A branch `main` deve permanecer como referência estável do projeto.

Sua tarefa é preparar o repositório para um fluxo de desenvolvimento mais próximo do usado em equipes, separando o trabalho em uma branch de integração antes que novas funcionalidades sejam desenvolvidas.

## Objetivo

Criar a estrutura inicial de trabalho para que as próximas alterações do projeto não sejam feitas diretamente na `main`.

## O que deve ser entregue

Ao final do exercício, deve existir uma branch de integração criada a partir da `main` e enviada para o GitLab.

Também deve existir um pequeno documento dentro da pasta `docs/` explicando, com suas palavras, como você pretende organizar o desenvolvimento das próximas etapas do treinamento.

Esse documento deve demonstrar que você entendeu:

- o papel da branch de integração;
- o motivo de trabalhar em branches separadas para novas alterações;
- como alterações prontas voltam para a linha principal de desenvolvimento.

## Restrições

- Não faça commits diretamente na `main`.
- Não copie comandos de colegas.
- Escreva o documento com suas próprias palavras.
- Use uma mensagem de commit que descreva a intenção da alteração, não apenas que um arquivo foi modificado.

## Validação

Depois de concluir sua solução, execute a validação local do projeto:

```bash
./scripts/validate.sh
```

Se a validação passar, envie sua branch para o GitLab.

## Dicas

Você provavelmente precisará usar comandos relacionados a:

- visualizar branches existentes;
- criar uma nova branch;
- adicionar arquivos ao controle de versão;
- criar um commit;
- enviar uma branch para o remoto.
