# Dashboard SGV8

Dashboard local de inteligência comercial conectado ao banco Firebird do SGV8.

## Indicadores

- vendas mensais e evolução dos últimos seis meses;
- vendas por representada e por representante;
- filtro para analisar todas as representadas ou uma representada específica;
- filtro para analisar todos os representantes ou um representante específico, combinado com a representada escolhida;
- clientes com maior variedade de referências e maior valor comprado;
- clientes sem compra entre três e cinco meses ou há cinco meses ou mais;
- clientes em crescimento ou queda, comparando os últimos três meses com os três anteriores (limite de 15%).

Todas as mensurações consideram exclusivamente registros com `PEDIDO.TIPO = 'PEDIDO'`.
Os valores monetários são calculados pelo campo `PEDIDO.TOTAL`, sem utilizar `PEDIDO.TOTAL_CIPI`.

## Execução local

Abra dois terminais nesta pasta e execute:

```powershell
pnpm api
```

```powershell
pnpm dev
```

Depois acesse `http://localhost:3000`. A API usa as configurações de `.env.local` e atualiza os dados a cada cinco minutos. O arquivo de exemplo `.env.example` documenta todas as opções.

## Segurança

O dashboard foi mantido local porque o banco contém dados comerciais e o Firebird usa uma conexão local. O arquivo `.env.local` é ignorado pelo Git.
