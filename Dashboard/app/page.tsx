'use client';

import { useCallback, useEffect, useMemo, useState } from 'react';
import {
  AlertTriangle, ArrowDownRight, ArrowUpRight, Bell, Building2, CalendarDays,
  CircleDollarSign, Clock3, PackageCheck, RefreshCw, Search, ShoppingBag,
  Sparkles, TrendingDown, TrendingUp, UsersRound,
} from 'lucide-react';
import { Area, AreaChart, CartesianGrid, XAxis, YAxis } from 'recharts';

import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Card, CardAction, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { ChartContainer, ChartTooltip, ChartTooltipContent, type ChartConfig } from '@/components/ui/chart';
import { Input } from '@/components/ui/input';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';

type RankingValue = { codigo: string; nome: string; pedidos: number; total: number };
type ProductClient = { codigo: string; nome: string; referencias: number; quantidade: number };
type InactiveClient = { codigo: string; nome: string; ultima_compra: string; valor_historico: number; months: number };
type TrendClient = { codigo: string; nome: string; atual: number; anterior: number; variacao: number };

type DashboardData = {
  meta: { month: string; latestOrderDate: string; generatedAt: string; refreshSeconds: number; represented: string; seller: string };
  representedOptions: { codigo: string; nome: string }[];
  sellerOptions: { codigo: string; nome: string }[];
  summary: { total: number; orders: number; activeClients: number; previousTotal: number; previousOrders: number; attention: number };
  history: { year: number; month: number; total: number }[];
  represented: RankingValue[];
  sellers: RankingValue[];
  clientsByProducts: ProductClient[];
  clientsByValue: RankingValue[];
  inactive3Months: InactiveClient[];
  inactive5Months: InactiveClient[];
  growingClients: TrendClient[];
  decliningClients: TrendClient[];
};

const chartConfig = { total: { label: 'Vendas', color: 'var(--chart-1)' } } satisfies ChartConfig;
const API_URL = 'http://127.0.0.1:3030/api/dashboard';
const months = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'];

const money = (value: number, compact = false) => new Intl.NumberFormat('pt-BR', {
  style: 'currency', currency: 'BRL', maximumFractionDigits: compact ? 0 : 2,
  notation: compact ? 'compact' : 'standard',
}).format(value);

const integer = (value: number) => new Intl.NumberFormat('pt-BR', { maximumFractionDigits: 0 }).format(value);
const percent = (value: number) => `${value >= 0 ? '+' : ''}${value.toLocaleString('pt-BR', { maximumFractionDigits: 1 })}%`;
const date = (value: string) => new Intl.DateTimeFormat('pt-BR').format(new Date(`${value.slice(0, 10)}T12:00:00`));
const monthLabel = (value: string) => {
  const [year, month] = value.split('-').map(Number);
  return new Intl.DateTimeFormat('pt-BR', { month: 'long', year: 'numeric' }).format(new Date(year, month - 1, 1));
};

export default function Home() {
  const [data, setData] = useState<DashboardData | null>(null);
  const [selectedMonth, setSelectedMonth] = useState('');
  const [selectedRepresented, setSelectedRepresented] = useState('all');
  const [selectedSeller, setSelectedSeller] = useState('all');
  const [updatedAt, setUpdatedAt] = useState('');
  const [refreshing, setRefreshing] = useState(false);
  const [error, setError] = useState('');
  const [search, setSearch] = useState('');

  const refresh = useCallback(async (month?: string, represented = 'all', seller = 'all') => {
    setRefreshing(true);
    setError('');
    try {
      const params = new URLSearchParams();
      if (month) params.set('month', month);
      if (represented !== 'all') params.set('represented', represented);
      if (seller !== 'all') params.set('seller', seller);
      const response = await fetch(`${API_URL}${params.size ? `?${params}` : ''}`, { cache: 'no-store' });
      if (!response.ok) throw new Error('A API local não respondeu corretamente.');
      const result = await response.json() as DashboardData;
      setData(result);
      setSelectedMonth(result.meta.month);
      setSelectedRepresented(result.meta.represented);
      setSelectedSeller(result.meta.seller);
      setUpdatedAt(new Intl.DateTimeFormat('pt-BR', { hour: '2-digit', minute: '2-digit' }).format(new Date()));
    } catch {
      setError('Não foi possível acessar o Firebird. Confirme se a API local está em execução.');
    } finally {
      setRefreshing(false);
    }
  }, []);

  useEffect(() => { refresh(undefined, 'all', 'all'); }, [refresh]);
  useEffect(() => {
    const timer = window.setInterval(() => refresh(selectedMonth || undefined, selectedRepresented, selectedSeller), 5 * 60 * 1000);
    return () => window.clearInterval(timer);
  }, [refresh, selectedMonth, selectedRepresented, selectedSeller]);

  const totalChange = data?.summary.previousTotal
    ? ((data.summary.total - data.summary.previousTotal) / data.summary.previousTotal) * 100 : 0;
  const orderChange = data?.summary.previousOrders
    ? ((data.summary.orders - data.summary.previousOrders) / data.summary.previousOrders) * 100 : 0;
  const chartData = data?.history.map((item) => ({
    label: `${months[item.month - 1]}/${String(item.year).slice(-2)}`, total: item.total,
  })) ?? [];

  return (
    <div className="min-h-screen bg-background text-foreground">
      <header className="sticky top-0 z-30 border-b border-border/70 bg-background/92 backdrop-blur-xl">
        <div className="mx-auto flex h-18 max-w-[1560px] items-center justify-between px-4 sm:px-7">
          <div className="flex items-center gap-3">
            <div className="grid size-10 place-items-center rounded-xl bg-primary text-primary-foreground shadow-[0_8px_24px_-8px_var(--primary)]"><Sparkles className="size-5" /></div>
            <div>
              <p className="text-[11px] font-bold uppercase tracking-[0.18em] text-muted-foreground">SGV8</p>
              <p className="font-heading text-base font-semibold leading-tight">Inteligência comercial</p>
            </div>
          </div>
          <div className="flex items-center gap-2">
            <Badge variant="outline" className="hidden h-8 gap-2 px-3 sm:flex">
              <span className={`size-1.5 rounded-full ${error ? 'bg-rose-500' : 'bg-emerald-500'}`} />
              {error ? 'Conexão indisponível' : `Atualizado às ${updatedAt || '—'}`}
            </Badge>
            <Button variant="outline" size="icon" aria-label="Atualizar dados" onClick={() => refresh(selectedMonth || undefined, selectedRepresented, selectedSeller)} disabled={refreshing}>
              <RefreshCw className={refreshing ? 'animate-spin' : ''} />
            </Button>
          </div>
        </div>
      </header>

      <main className="mx-auto max-w-[1560px] px-4 py-6 sm:px-7 sm:py-8">
        <section className="mb-6 flex flex-col justify-between gap-4 lg:flex-row lg:items-end">
          <div>
            <div className="mb-2 flex items-center gap-2 text-sm text-muted-foreground"><CalendarDays className="size-4" /> Dados consolidados do Firebird</div>
            <h1 className="font-heading text-2xl font-semibold tracking-tight sm:text-3xl">Visão geral de vendas</h1>
            <p className="mt-1.5 max-w-2xl text-sm text-muted-foreground">Desempenho, oportunidades e clientes que precisam de ação.</p>
          </div>
          <div className="flex w-full flex-col gap-2 sm:w-auto sm:flex-row sm:flex-wrap sm:justify-end">
            <label className="flex items-center gap-3 rounded-xl border bg-card px-3 py-2 text-sm shadow-sm">
              <span className="text-muted-foreground">Período</span>
              <input
                type="month"
                aria-label="Mês de análise"
                value={selectedMonth}
                max={data?.meta.latestOrderDate.slice(0, 7)}
                onChange={(event) => { setSelectedMonth(event.target.value); refresh(event.target.value, selectedRepresented, selectedSeller); }}
                className="bg-transparent font-medium outline-none"
              />
            </label>
            <Select
              value={selectedRepresented}
              onValueChange={(value) => {
                const nextValue = value || 'all';
                setSelectedRepresented(nextValue);
                setSelectedSeller('all');
                refresh(selectedMonth || undefined, nextValue, 'all');
              }}
            >
              <SelectTrigger className="h-auto w-full min-w-64 rounded-xl bg-card px-3 py-2 shadow-sm sm:w-72" aria-label="Representada">
                <Building2 className="text-muted-foreground" />
                <SelectValue placeholder="Todas as representadas" />
              </SelectTrigger>
              <SelectContent align="end">
                <SelectItem value="all">Todas as representadas</SelectItem>
                {data?.representedOptions.map((item) => (
                  <SelectItem key={item.codigo} value={item.codigo}>{item.nome}</SelectItem>
                ))}
              </SelectContent>
            </Select>
            <Select
              value={selectedSeller}
              onValueChange={(value) => {
                const nextValue = value || 'all';
                setSelectedSeller(nextValue);
                refresh(selectedMonth || undefined, selectedRepresented, nextValue);
              }}
            >
              <SelectTrigger className="h-auto w-full min-w-64 rounded-xl bg-card px-3 py-2 shadow-sm sm:w-72" aria-label="Representante">
                <UsersRound className="text-muted-foreground" />
                <SelectValue placeholder="Todos os representantes" />
              </SelectTrigger>
              <SelectContent align="end">
                <SelectItem value="all">Todos os representantes</SelectItem>
                {data?.sellerOptions.map((item) => (
                  <SelectItem key={item.codigo} value={item.codigo}>{item.nome}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
        </section>

        {error && (
          <div role="alert" className="mb-5 flex items-start gap-3 rounded-xl border border-rose-200 bg-rose-50 p-4 text-sm text-rose-800">
            <AlertTriangle className="mt-0.5 size-4 shrink-0" />
            <div><p className="font-semibold">Dados temporariamente indisponíveis</p><p className="mt-0.5 text-rose-700">{error}</p></div>
          </div>
        )}

        {!data ? <LoadingDashboard /> : (
          <>
            <section className="grid gap-3 sm:grid-cols-2 xl:grid-cols-4">
              <KpiCard label="Vendas no mês" value={money(data.summary.total, true)} note={`vs. ${money(data.summary.previousTotal, true)} no mês anterior`} change={totalChange} icon={CircleDollarSign} />
              <KpiCard label="Pedidos" value={integer(data.summary.orders)} note={`vs. ${integer(data.summary.previousOrders)} no mês anterior`} change={orderChange} icon={ShoppingBag} />
              <KpiCard label="Clientes ativos" value={integer(data.summary.activeClients)} note={`compraram em ${monthLabel(data.meta.month)}`} icon={UsersRound} />
              <KpiCard label="Em atenção" value={integer(data.summary.attention)} note="sem compras há 3 meses ou mais" icon={Bell} attention />
            </section>

            <section className="mt-4 grid gap-4 xl:grid-cols-[minmax(0,1.65fr)_minmax(320px,.75fr)]">
              <Card className="border-0 shadow-sm ring-border/80">
                <CardHeader>
                  <CardTitle>Evolução das vendas</CardTitle>
                  <CardDescription>Faturamento dos últimos 6 meses com pedidos</CardDescription>
                  <CardAction><Badge variant={totalChange >= 0 ? 'secondary' : 'destructive'}>{percent(totalChange)} no mês</Badge></CardAction>
                </CardHeader>
                <CardContent>
                  <ChartContainer config={chartConfig} className="h-[300px] w-full aspect-auto">
                    <AreaChart data={chartData} margin={{ top: 12, right: 8, left: -10, bottom: 0 }}>
                      <defs><linearGradient id="fillTotal" x1="0" y1="0" x2="0" y2="1"><stop offset="4%" stopColor="var(--color-total)" stopOpacity={0.32} /><stop offset="96%" stopColor="var(--color-total)" stopOpacity={0.02} /></linearGradient></defs>
                      <CartesianGrid vertical={false} strokeDasharray="3 4" />
                      <XAxis dataKey="label" axisLine={false} tickLine={false} tickMargin={10} />
                      <YAxis axisLine={false} tickLine={false} width={68} tickFormatter={(value) => money(Number(value), true)} />
                      <ChartTooltip cursor={{ stroke: 'var(--border)', strokeWidth: 1 }} content={<ChartTooltipContent formatter={(value) => money(Number(value))} />} />
                      <Area type="monotone" dataKey="total" stroke="var(--color-total)" strokeWidth={3} fill="url(#fillTotal)" />
                    </AreaChart>
                  </ChartContainer>
                </CardContent>
              </Card>

              <Card className="overflow-visible border-0 bg-primary text-primary-foreground shadow-[0_18px_45px_-26px_var(--primary)] ring-0">
                <CardHeader>
                  <CardTitle className="text-primary-foreground">Destaques do mês</CardTitle>
                  <CardDescription className="text-primary-foreground/65">Líderes do resultado atual</CardDescription>
                </CardHeader>
                <CardContent className="space-y-3">
                  <Highlight icon={Building2} eyebrow="Representada líder" title={data.represented[0]?.nome || 'Sem vendas'} value={money(data.represented[0]?.total || 0, true)} />
                  <Highlight icon={UsersRound} eyebrow="Representante líder" title={data.sellers[0]?.nome || 'Sem vendas'} value={money(data.sellers[0]?.total || 0, true)} />
                  <Highlight icon={PackageCheck} eyebrow="Mais referências" title={data.clientsByProducts[0]?.nome || 'Sem vendas'} value={`${integer(data.clientsByProducts[0]?.referencias || 0)} refs.`} />
                  <Highlight icon={CircleDollarSign} eyebrow="Maior valor comprado" title={data.clientsByValue[0]?.nome || 'Sem vendas'} value={money(data.clientsByValue[0]?.total || 0, true)} />
                </CardContent>
              </Card>
            </section>

            <section className="mt-4 grid gap-4 lg:grid-cols-2">
              <RankingCard title="Vendas por representada" description="Valor total no mês" rows={data.represented} value={(row) => money(row.total)} detail={(row) => `${row.pedidos} pedidos`} />
              <RankingCard title="Vendas por representante" description="Valor total no mês" rows={data.sellers} value={(row) => money(row.total)} detail={(row) => `${row.pedidos} pedidos`} />
              <RankingCard title="Clientes por variedade" description="Quem trabalha com mais referências de produtos" rows={data.clientsByProducts} value={(row) => `${integer(row.referencias)} referências`} detail={(row) => `${integer(row.quantidade)} unidades`} />
              <RankingCard title="Clientes por valor" description="Clientes que mais geraram receita no mês" rows={data.clientsByValue} value={(row) => money(row.total)} detail={(row) => `${row.pedidos} pedidos`} />
            </section>

            <Card className="mt-4 border-0 shadow-sm ring-border/80">
              <CardHeader className="border-b">
                <CardTitle>Radar de clientes</CardTitle>
                <CardDescription>Listas acionáveis de inatividade e mudança de comportamento</CardDescription>
                <CardAction className="w-[min(260px,38vw)]">
                  <div className="relative"><Search className="absolute left-2.5 top-1/2 size-4 -translate-y-1/2 text-muted-foreground" /><Input value={search} onChange={(event) => setSearch(event.target.value)} placeholder="Buscar cliente" className="pl-8" /></div>
                </CardAction>
              </CardHeader>
              <CardContent className="pt-1">
                <Tabs defaultValue="inactive3">
                  <TabsList variant="line" className="mb-3 h-auto w-full justify-start overflow-x-auto py-2">
                    <TabsTrigger value="inactive3">3 meses <Count value={data.inactive3Months.length} /></TabsTrigger>
                    <TabsTrigger value="inactive5">5+ meses <Count value={data.inactive5Months.length} /></TabsTrigger>
                    <TabsTrigger value="declining"><TrendingDown /> Em queda <Count value={data.decliningClients.length} /></TabsTrigger>
                    <TabsTrigger value="growing"><TrendingUp /> Em crescimento <Count value={data.growingClients.length} /></TabsTrigger>
                  </TabsList>
                  <TabsContent value="inactive3"><InactiveTable rows={filterRows(data.inactive3Months, search)} empty="Nenhum cliente entre 3 e 5 meses sem compra." /></TabsContent>
                  <TabsContent value="inactive5"><InactiveTable rows={filterRows(data.inactive5Months, search)} empty="Nenhum cliente com 5 meses ou mais sem compra." /></TabsContent>
                  <TabsContent value="declining"><TrendTable rows={filterRows(data.decliningClients, search)} mode="down" /></TabsContent>
                  <TabsContent value="growing"><TrendTable rows={filterRows(data.growingClients, search)} mode="up" /></TabsContent>
                </Tabs>
              </CardContent>
            </Card>

            <div className="mt-4 flex flex-col gap-2 rounded-xl border border-dashed border-border bg-muted/40 px-4 py-3 text-xs text-muted-foreground sm:flex-row sm:items-center sm:justify-between">
              <span className="flex items-center gap-2"><Clock3 className="size-3.5" /> Atualização automática a cada 5 minutos</span>
              <span>Último pedido no banco: {date(data.meta.latestOrderDate)}</span>
            </div>
          </>
        )}
      </main>
    </div>
  );
}

function KpiCard({ label, value, note, change, icon: Icon, attention = false }: { label: string; value: string; note: string; change?: number; icon: typeof Bell; attention?: boolean }) {
  const positive = (change ?? 0) >= 0;
  return (
    <Card className="kpi-card border-0 shadow-sm ring-border/80">
      <CardHeader>
        <CardTitle className="flex items-center gap-2 text-sm text-muted-foreground"><span className="grid size-8 place-items-center rounded-lg bg-primary/8 text-primary"><Icon className="size-4" /></span>{label}</CardTitle>
        {(change !== undefined || attention) && <CardAction><Badge variant="outline" className={attention ? 'border-amber-200 bg-amber-50 text-amber-700' : positive ? 'border-emerald-200 bg-emerald-50 text-emerald-700' : 'border-rose-200 bg-rose-50 text-rose-700'}>{attention ? <Bell /> : positive ? <ArrowUpRight /> : <ArrowDownRight />}{attention ? 'Ação' : percent(change || 0)}</Badge></CardAction>}
      </CardHeader>
      <CardContent><p className="font-heading text-2xl font-semibold tracking-tight sm:text-[1.75rem]">{value}</p><p className="mt-1 text-xs text-muted-foreground">{note}</p></CardContent>
    </Card>
  );
}

function Highlight({ icon: Icon, eyebrow, title, value }: { icon: typeof Building2; eyebrow: string; title: string; value: string }) {
  return <div className="flex items-center gap-3 rounded-xl border border-white/10 bg-white/8 p-3.5"><span className="grid size-9 shrink-0 place-items-center rounded-lg bg-white/12"><Icon className="size-4" /></span><div className="min-w-0 flex-1"><p className="text-[10px] font-bold uppercase tracking-[0.12em] text-primary-foreground/55">{eyebrow}</p><p className="truncate text-sm font-medium">{title}</p></div><p className="text-sm font-semibold tabular-nums">{value}</p></div>;
}

function RankingCard<T extends { codigo: string; nome: string }>({ title, description, rows, value, detail }: { title: string; description: string; rows: T[]; value: (row: T) => string; detail: (row: T) => string }) {
  const max = Math.max(1, ...rows.map((_, index) => rows.length - index));
  return (
    <Card className="border-0 shadow-sm ring-border/80">
      <CardHeader><CardTitle>{title}</CardTitle><CardDescription>{description}</CardDescription></CardHeader>
      <CardContent className="space-y-4">
        {rows.length === 0 ? <EmptyState text="Nenhum dado neste período." /> : rows.slice(0, 6).map((row, index) => (
          <div key={row.codigo} className="grid grid-cols-[24px_minmax(0,1fr)_auto] items-center gap-x-3 gap-y-1">
            <span className="text-center text-xs font-semibold text-muted-foreground">{index + 1}</span>
            <p className="truncate text-sm font-medium">{row.nome}</p>
            <div className="text-right"><p className="text-sm font-semibold tabular-nums">{value(row)}</p><p className="text-[11px] text-muted-foreground">{detail(row)}</p></div>
            <div className="col-start-2 h-1.5 overflow-hidden rounded-full bg-muted"><div className="h-full rounded-full bg-primary/70" style={{ width: `${Math.max(8, ((rows.length - index) / max) * 100)}%` }} /></div>
          </div>
        ))}
      </CardContent>
    </Card>
  );
}

function InactiveTable({ rows, empty }: { rows: InactiveClient[]; empty: string }) {
  if (!rows.length) return <EmptyState text={empty} />;
  return <div className="overflow-x-auto"><table className="w-full min-w-[660px] text-sm"><thead><tr className="border-b text-left text-xs text-muted-foreground"><th className="py-3 font-medium">Cliente</th><th className="py-3 font-medium">Última compra</th><th className="py-3 font-medium">Tempo sem compra</th><th className="py-3 text-right font-medium">Valor histórico</th></tr></thead><tbody>{rows.slice(0, 30).map((row) => <tr key={row.codigo} className="border-b border-border/60 last:border-0"><td className="py-3 pr-4 font-medium">{row.nome}</td><td className="py-3 text-muted-foreground">{date(row.ultima_compra)}</td><td className="py-3"><Badge variant={row.months >= 5 ? 'destructive' : 'outline'}>{row.months} meses</Badge></td><td className="py-3 text-right font-medium tabular-nums">{money(row.valor_historico)}</td></tr>)}</tbody></table></div>;
}

function TrendTable({ rows, mode }: { rows: TrendClient[]; mode: 'up' | 'down' }) {
  if (!rows.length) return <EmptyState text={`Nenhum cliente ${mode === 'up' ? 'em crescimento' : 'em queda'} com o critério de 15%.`} />;
  return <div className="overflow-x-auto"><table className="w-full min-w-[660px] text-sm"><thead><tr className="border-b text-left text-xs text-muted-foreground"><th className="py-3 font-medium">Cliente</th><th className="py-3 text-right font-medium">3 meses anteriores</th><th className="py-3 text-right font-medium">Últimos 3 meses</th><th className="py-3 text-right font-medium">Variação</th></tr></thead><tbody>{rows.slice(0, 30).map((row) => <tr key={row.codigo} className="border-b border-border/60 last:border-0"><td className="py-3 pr-4 font-medium">{row.nome}</td><td className="py-3 text-right text-muted-foreground tabular-nums">{money(row.anterior)}</td><td className="py-3 text-right font-medium tabular-nums">{money(row.atual)}</td><td className={`py-3 text-right font-semibold tabular-nums ${mode === 'up' ? 'text-emerald-700' : 'text-rose-700'}`}>{percent(row.variacao)}</td></tr>)}</tbody></table></div>;
}

function Count({ value }: { value: number }) { return <span className="rounded-full bg-muted px-1.5 py-0.5 text-[10px] tabular-nums">{value}</span>; }
function EmptyState({ text }: { text: string }) { return <div className="grid min-h-32 place-items-center text-sm text-muted-foreground">{text}</div>; }
function LoadingDashboard() { return <div className="grid gap-3 sm:grid-cols-2 xl:grid-cols-4">{Array.from({ length: 4 }).map((_, index) => <div key={index} className="h-32 animate-pulse rounded-xl bg-muted" />)}</div>; }
function filterRows<T extends { nome: string }>(rows: T[], search: string) { const term = search.trim().toLocaleLowerCase('pt-BR'); return term ? rows.filter((row) => row.nome.toLocaleLowerCase('pt-BR').includes(term)) : rows; }
