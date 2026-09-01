import http from 'node:http';
import { spawn } from 'node:child_process';

const config = {
  isql: process.env.FIREBIRD_ISQL || 'C:\\Program Files\\Firebird\\Firebird_3_0\\isql.exe',
  database: process.env.FIREBIRD_DATABASE || 'C:\\sgv8\\Banco\\BANCO.GDB',
  user: process.env.FIREBIRD_USER || 'SYSDBA',
  password: process.env.FIREBIRD_PASSWORD || '',
};

const apiPort = Number(process.env.DASHBOARD_API_PORT || 3030);
const separator = String.fromCharCode(31);
const decoder = new TextDecoder('windows-1252');
let dashboardQueue = Promise.resolve();

function enqueueDashboard(work) {
  const result = dashboardQueue.then(work, work);
  dashboardQueue = result.catch(() => undefined);
  return result;
}

function runIsql(sql) {
  return new Promise((resolve, reject) => {
    const child = spawn(config.isql, [
      '-q', '-user', config.user, '-password', config.password, config.database,
    ], { windowsHide: true, stdio: ['pipe', 'pipe', 'pipe'] });
    const stdout = [];
    const stderr = [];
    child.stdout.on('data', (chunk) => stdout.push(chunk));
    child.stderr.on('data', (chunk) => stderr.push(chunk));
    child.on('error', reject);
    child.on('close', (code) => {
      const output = decoder.decode(Buffer.concat(stdout));
      const errorOutput = decoder.decode(Buffer.concat(stderr));
      if (code !== 0 || /Statement failed|SQLSTATE\s*=|invalid database handle/i.test(output + errorOutput)) {
        return reject(new Error((output + '\n' + errorOutput).trim() || `isql terminou com código ${code}`));
      }
      resolve(output.split(/\r?\n/)
        .map((line) => line.trim())
        .filter((line) => line && !/^Database:|^SQL>|^User:/i.test(line)));
    });
    child.stdin.end(`SET BAIL ON;\r\nSET HEADING OFF;\r\nSET LIST OFF;\r\nSET WIDTH ROW_DATA 4096;\r\n${sql}\r\nQUIT;\r\n`);
  });
}

const textField = (expression) => `COALESCE(TRIM(CAST(${expression} AS VARCHAR(255))), '')`;

async function selectRows(expressions, keys, fromClause) {
  const rowExpression = expressions.map(textField).join(' || ASCII_CHAR(31) || ');
  const lines = await runIsql(`SELECT ${rowExpression} AS ROW_DATA ${fromClause};`);
  return lines.map((line) => {
    const values = line.split(separator);
    return Object.fromEntries(keys.map((key, index) => [key, values[index] ?? '']));
  });
}

const iso = (date) => date.toISOString().slice(0, 10);
const startOfMonth = (date) => new Date(Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), 1));
const addMonths = (date, amount) => new Date(Date.UTC(date.getUTCFullYear(), date.getUTCMonth() + amount, 1));
const dateSql = (date) => `CAST('${iso(date)}' AS DATE)`;
const number = (value) => Number(String(value || '0').replace(',', '.')) || 0;
const totalExpression = 'COALESCE(p.TOTAL, 0)';
const validOrder = "p.TIPO = 'PEDIDO'";

async function getDashboard(selectedMonth, selectedRepresented, selectedSeller) {
  const representedCode = selectedRepresented && /^\d+$/.test(selectedRepresented)
    ? Number(selectedRepresented)
    : null;
  const sellerCode = selectedSeller && /^\d+$/.test(selectedSeller)
    ? Number(selectedSeller)
    : null;
  const representedFilter = representedCode ? ` AND p.CODFABRICA = ${representedCode}` : '';
  const sellerFilter = sellerCode ? ` AND p.CODVENDEDOR = ${sellerCode}` : '';
  const scopeFilter = representedFilter + sellerFilter;
  const representedOptionsRows = await selectRows(
    ['f.CODIGO', 'COALESCE(f.NOMEFANTASIA, f.RAZAOSOCIAL)'],
    ['codigo', 'nome'],
    `FROM FABRICA f WHERE EXISTS (SELECT 1 FROM PEDIDO p WHERE p.CODFABRICA = f.CODIGO AND ${validOrder}) ORDER BY COALESCE(f.NOMEFANTASIA, f.RAZAOSOCIAL)`,
  );
  const sellerOptionsRows = await selectRows(
    ['v.CODIGO', 'v.NOME'],
    ['codigo', 'nome'],
    `FROM VENDEDOR v WHERE EXISTS (SELECT 1 FROM PEDIDO p WHERE p.CODVENDEDOR = v.CODIGO AND ${validOrder}${representedFilter}) ORDER BY v.NOME`,
  );
  const [latestRow] = await selectRows(['MAX(p.DATA)'], ['ultima_data'], `FROM PEDIDO p WHERE ${validOrder}${scopeFilter}`);
  if (!latestRow?.ultima_data) throw new Error('Não há pedidos cadastrados no banco.');

  const latestDate = new Date(`${latestRow.ultima_data.slice(0, 10)}T00:00:00.000Z`);
  const parsedMonth = selectedMonth && /^\d{4}-\d{2}$/.test(selectedMonth)
    ? new Date(`${selectedMonth}-01T00:00:00.000Z`)
    : latestDate;
  const monthStart = startOfMonth(parsedMonth);
  const monthEnd = addMonths(monthStart, 1);
  const previousStart = addMonths(monthStart, -1);
  const sixMonthsStart = addMonths(monthStart, -5);
  const trendCurrentStart = addMonths(monthEnd, -3);
  const trendPreviousStart = addMonths(monthEnd, -6);
  const inactive3 = addMonths(monthEnd, -3);
  const inactive5 = addMonths(monthEnd, -5);

  const [summary] = await selectRows(
    ['COUNT(*)', 'COUNT(DISTINCT p.CODCLIENTE)', `COALESCE(SUM(${totalExpression}), 0)`],
    ['pedidos', 'clientes_ativos', 'total'],
    `FROM PEDIDO p WHERE ${validOrder}${scopeFilter} AND p.DATA >= ${dateSql(monthStart)} AND p.DATA < ${dateSql(monthEnd)}`,
  );
  const [previous] = await selectRows(
    ['COUNT(*)', `COALESCE(SUM(${totalExpression}), 0)`],
    ['pedidos', 'total'],
    `FROM PEDIDO p WHERE ${validOrder}${scopeFilter} AND p.DATA >= ${dateSql(previousStart)} AND p.DATA < ${dateSql(monthStart)}`,
  );
  const historyRows = await selectRows(
    ['EXTRACT(YEAR FROM p.DATA)', 'EXTRACT(MONTH FROM p.DATA)', `COALESCE(SUM(${totalExpression}), 0)`],
    ['year', 'month', 'total'],
    `FROM PEDIDO p WHERE ${validOrder}${scopeFilter} AND p.DATA >= ${dateSql(sixMonthsStart)} AND p.DATA < ${dateSql(monthEnd)} GROUP BY EXTRACT(YEAR FROM p.DATA), EXTRACT(MONTH FROM p.DATA) ORDER BY EXTRACT(YEAR FROM p.DATA), EXTRACT(MONTH FROM p.DATA)`,
  );
  const representedRows = await selectRows(
    ['f.CODIGO', 'COALESCE(f.NOMEFANTASIA, f.RAZAOSOCIAL)', 'COUNT(*)', `COALESCE(SUM(${totalExpression}), 0)`],
    ['codigo', 'nome', 'pedidos', 'total'],
    `FROM PEDIDO p JOIN FABRICA f ON f.CODIGO = p.CODFABRICA WHERE ${validOrder}${scopeFilter} AND p.DATA >= ${dateSql(monthStart)} AND p.DATA < ${dateSql(monthEnd)} GROUP BY f.CODIGO, f.NOMEFANTASIA, f.RAZAOSOCIAL ORDER BY SUM(${totalExpression}) DESC ROWS 8`,
  );
  const sellerRows = await selectRows(
    ['v.CODIGO', 'v.NOME', 'COUNT(*)', `COALESCE(SUM(${totalExpression}), 0)`],
    ['codigo', 'nome', 'pedidos', 'total'],
    `FROM PEDIDO p JOIN VENDEDOR v ON v.CODIGO = p.CODVENDEDOR WHERE ${validOrder}${scopeFilter} AND p.DATA >= ${dateSql(monthStart)} AND p.DATA < ${dateSql(monthEnd)} GROUP BY v.CODIGO, v.NOME ORDER BY SUM(${totalExpression}) DESC ROWS 8`,
  );
  const productClientRows = await selectRows(
    ['c.CODIGO', 'COALESCE(c.NOMEFANTASIA, c.RAZAOSOCIAL)', 'COUNT(DISTINCT i.CODPRODUTO)', 'COALESCE(SUM(i.QUANT), 0)'],
    ['codigo', 'nome', 'referencias', 'quantidade'],
    `FROM PEDIDO p JOIN CLIENTES c ON c.CODIGO = p.CODCLIENTE JOIN ITENSPEDIDO i ON i.CODPEDIDO = p.CODIGO WHERE ${validOrder}${scopeFilter} AND p.DATA >= ${dateSql(monthStart)} AND p.DATA < ${dateSql(monthEnd)} GROUP BY c.CODIGO, c.NOMEFANTASIA, c.RAZAOSOCIAL ORDER BY COUNT(DISTINCT i.CODPRODUTO) DESC, SUM(i.QUANT) DESC ROWS 8`,
  );
  const valueClientRows = await selectRows(
    ['c.CODIGO', 'COALESCE(c.NOMEFANTASIA, c.RAZAOSOCIAL)', 'COUNT(*)', `COALESCE(SUM(${totalExpression}), 0)`],
    ['codigo', 'nome', 'pedidos', 'total'],
    `FROM PEDIDO p JOIN CLIENTES c ON c.CODIGO = p.CODCLIENTE WHERE ${validOrder}${scopeFilter} AND p.DATA >= ${dateSql(monthStart)} AND p.DATA < ${dateSql(monthEnd)} GROUP BY c.CODIGO, c.NOMEFANTASIA, c.RAZAOSOCIAL ORDER BY SUM(${totalExpression}) DESC ROWS 8`,
  );
  const inactiveRows = await selectRows(
    ['c.CODIGO', 'COALESCE(c.NOMEFANTASIA, c.RAZAOSOCIAL)', 'MAX(p.DATA)', `COALESCE(SUM(${totalExpression}), 0)`],
    ['codigo', 'nome', 'ultima_compra', 'valor_historico'],
    `FROM CLIENTES c JOIN PEDIDO p ON p.CODCLIENTE = c.CODIGO WHERE ${validOrder}${scopeFilter} GROUP BY c.CODIGO, c.NOMEFANTASIA, c.RAZAOSOCIAL HAVING MAX(p.DATA) < ${dateSql(inactive3)} ORDER BY MAX(p.DATA) DESC`,
  );
  const trendRows = await selectRows(
    ['c.CODIGO', 'COALESCE(c.NOMEFANTASIA, c.RAZAOSOCIAL)',
      `SUM(CASE WHEN p.DATA >= ${dateSql(trendCurrentStart)} AND p.DATA < ${dateSql(monthEnd)} THEN ${totalExpression} ELSE 0 END)`,
      `SUM(CASE WHEN p.DATA >= ${dateSql(trendPreviousStart)} AND p.DATA < ${dateSql(trendCurrentStart)} THEN ${totalExpression} ELSE 0 END)`],
    ['codigo', 'nome', 'atual', 'anterior'],
    `FROM CLIENTES c JOIN PEDIDO p ON p.CODCLIENTE = c.CODIGO WHERE ${validOrder}${scopeFilter} AND p.DATA >= ${dateSql(trendPreviousStart)} AND p.DATA < ${dateSql(monthEnd)} GROUP BY c.CODIGO, c.NOMEFANTASIA, c.RAZAOSOCIAL`,
  );

  const inactive = inactiveRows.map((row) => ({
    ...row,
    valor_historico: number(row.valor_historico),
    months: Math.max(0, Math.floor((monthEnd - new Date(`${row.ultima_compra.slice(0, 10)}T00:00:00Z`)) / 2629800000)),
  }));
  const trends = trendRows.map((row) => {
    const current = number(row.atual);
    const prior = number(row.anterior);
    const variation = prior > 0 ? ((current - prior) / prior) * 100 : (current > 0 ? 100 : 0);
    return { ...row, atual: current, anterior: prior, variacao: variation };
  });

  return {
    meta: { month: iso(monthStart).slice(0, 7), latestOrderDate: iso(latestDate), generatedAt: new Date().toISOString(), refreshSeconds: 300, represented: representedCode ? String(representedCode) : 'all', seller: sellerCode ? String(sellerCode) : 'all' },
    representedOptions: representedOptionsRows.map((row) => ({ codigo: row.codigo, nome: row.nome })),
    sellerOptions: sellerOptionsRows.map((row) => ({ codigo: row.codigo, nome: row.nome })),
    summary: { total: number(summary.total), orders: number(summary.pedidos), activeClients: number(summary.clientes_ativos), previousTotal: number(previous.total), previousOrders: number(previous.pedidos), attention: inactive.length },
    history: historyRows.map((row) => ({ year: number(row.year), month: number(row.month), total: number(row.total) })),
    represented: representedRows.map((row) => ({ ...row, pedidos: number(row.pedidos), total: number(row.total) })),
    sellers: sellerRows.map((row) => ({ ...row, pedidos: number(row.pedidos), total: number(row.total) })),
    clientsByProducts: productClientRows.map((row) => ({ ...row, referencias: number(row.referencias), quantidade: number(row.quantidade) })),
    clientsByValue: valueClientRows.map((row) => ({ ...row, pedidos: number(row.pedidos), total: number(row.total) })),
    inactive3Months: inactive.filter((row) => new Date(row.ultima_compra) >= inactive5).slice(0, 50),
    inactive5Months: inactive.filter((row) => new Date(row.ultima_compra) < inactive5).slice(0, 50),
    growingClients: trends.filter((row) => row.variacao >= 15 && row.atual > 0).sort((a, b) => b.variacao - a.variacao).slice(0, 50),
    decliningClients: trends.filter((row) => row.variacao <= -15 && row.anterior > 0).sort((a, b) => a.variacao - b.variacao).slice(0, 50),
  };
}

const server = http.createServer(async (request, response) => {
  response.setHeader('Access-Control-Allow-Origin', '*');
  response.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  response.setHeader('Cache-Control', 'no-store');
  if (request.method === 'OPTIONS') return response.writeHead(204).end();

  const url = new URL(request.url || '/', `http://${request.headers.host}`);
  if (url.pathname === '/api/health') {
    try {
      const [row] = await selectRows(['CURRENT_TIMESTAMP'], ['time'], 'FROM RDB$DATABASE');
      response.writeHead(200, { 'Content-Type': 'application/json; charset=utf-8' });
      return response.end(JSON.stringify({ status: 'ok', databaseTime: row.time }));
    } catch (error) {
      response.writeHead(503, { 'Content-Type': 'application/json; charset=utf-8' });
      return response.end(JSON.stringify({ status: 'error', message: error.message }));
    }
  }
  if (url.pathname !== '/api/dashboard') {
    response.writeHead(404, { 'Content-Type': 'application/json; charset=utf-8' });
    return response.end(JSON.stringify({ message: 'Rota não encontrada.' }));
  }
  try {
    const data = await enqueueDashboard(() => getDashboard(
      url.searchParams.get('month'),
      url.searchParams.get('represented'),
      url.searchParams.get('seller'),
    ));
    response.writeHead(200, { 'Content-Type': 'application/json; charset=utf-8' });
    response.end(JSON.stringify(data));
  } catch (error) {
    console.error(error);
    response.writeHead(500, { 'Content-Type': 'application/json; charset=utf-8' });
    response.end(JSON.stringify({ message: 'Não foi possível consultar o Firebird.', detail: error.message }));
  }
});

server.listen(apiPort, '127.0.0.1', () => console.log(`SGV8 Dashboard API em http://127.0.0.1:${apiPort}`));
