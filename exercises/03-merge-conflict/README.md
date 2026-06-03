# Exercício 03 — Resolvendo um conflito de merge

## Contexto

Em projetos reais, é comum que duas branches alterem a mesma parte de um arquivo antes de serem integradas. Quando isso acontece, o Git pode não conseguir decidir sozinho qual versão manter.

Neste exercício, você deverá resolver um conflito real gerado no repositório.

## Objetivo

Resolver corretamente um conflito entre a branch de integração e uma branch de feature, preservando o sentido das duas alterações concorrentes.

## Preparação

Execute o script de preparação do exercício:

```bash
./exercises/03-merge-conflict/setup.sh
```

O script colocará o repositório em um estado com conflito aberto. A partir desse ponto, a solução é sua responsabilidade.

## O que deve ser entregue

Ao final do exercício:

- o conflito deve estar resolvido;
- o arquivo afetado deve conter uma versão final coerente;
- nenhuma marca interna de conflito do Git deve permanecer no projeto;
- a resolução deve estar registrada em commit;
- a branch da feature deve ser enviada ao GitLab.

A versão final do texto deve fazer sentido como conteúdo de produto/documentação. Não basta escolher um dos lados do conflito sem avaliar o que foi perdido.

## Restrições

- Não apague o arquivo conflitante para “resolver” o problema.
- Não aceite automaticamente um lado do conflito sem revisar o conteúdo.
- Não deixe marcadores de conflito no arquivo.
- Não reinicie o exercício para evitar resolver o conflito manualmente.
- Não faça a resolução diretamente na branch de integração.

## Validação

Depois de resolver o conflito e registrar sua solução, execute:

```bash
./scripts/validate.sh
```

Se a validação passar, envie sua branch para o GitLab.

## Dicas

Você provavelmente precisará investigar:

- qual arquivo está em conflito;
- quais trechos vieram de cada branch;
- como editar o arquivo para produzir uma versão final única;
- como informar ao Git que o conflito foi resolvido;
- como concluir o merge após a resolução.
