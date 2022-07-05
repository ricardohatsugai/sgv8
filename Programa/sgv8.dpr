program sgv8;

uses
  Vcl.Forms,
  UFrm_Principal in 'UFrm_Principal.pas' {Frm_Principal},
  UFrm_Login in 'UFrm_Login.pas' {Frm_Login},
  UDM_Principal in 'UDM_Principal.pas' {DM_Principal: TDataModule},
  UDM_Login in 'UDM_Login.pas' {DM_Login: TDataModule},
  UFrm_ListaClientes in 'UFrm_ListaClientes.pas' {Frm_ListaClientes},
  UDM_ListagemDeClientes in 'UDM_ListagemDeClientes.pas' {DM_ListagemDeClientes: TDataModule},
  UDM_CadEstado_e_Estado in 'UDM_CadEstado_e_Estado.pas' {DM_CadEstado_e_Cidade: TDataModule},
  UFrm_CadEstado in 'UFrm_CadEstado.pas' {Frm_CadEstado},
  UFrm_CadCidades in 'UFrm_CadCidades.pas' {Frm_CadCidades},
  UDM_Cadastro_de_Clientes in 'UDM_Cadastro_de_Clientes.pas' {DM_CadastroClientes: TDataModule},
  UFrm_Cadastro_de_Clientes in 'UFrm_Cadastro_de_Clientes.pas' {Frm_Cadastro_de_Clientes},
  UFrame_Pesquisar in 'UFrame_Pesquisar.pas' {FrmPesquisa: TFrame},
  UDM_Pagamento in 'UDM_Pagamento.pas' {DM_Pagamentos: TDataModule},
  UFrm_Pagamentos in 'UFrm_Pagamentos.pas' {Frm_Pagamentos},
  UDM_Cadastro_de_Vendedores in 'UDM_Cadastro_de_Vendedores.pas' {DM_Cadastro_de_Vendedores: TDataModule},
  UFrm_Cadastro_de_Vendedores in 'UFrm_Cadastro_de_Vendedores.pas' {Frm_Cadastro_de_Vendedores},
  UDM_Cadastro_de_Transportes in 'UDM_Cadastro_de_Transportes.pas' {DM_Cadastro_Transportes: TDataModule},
  UFrm_Cadastro_de_Transportes in 'UFrm_Cadastro_de_Transportes.pas' {Frm_Cadastro_de_Transportes},
  UFrm_Cadastro_de_Usuarios in 'UFrm_Cadastro_de_Usuarios.pas' {Frm_Cadastro_de_Usuarios},
  UDM_Cadastro_de_Representadas in 'UDM_Cadastro_de_Representadas.pas' {DM_Representadas: TDataModule},
  UFrm_Lista_de_Representadas in 'UFrm_Lista_de_Representadas.pas' {Frm_Lista_Representadas},
  UDM_Cadastro_de_Produtos in 'UDM_Cadastro_de_Produtos.pas' {DM_Cadastro_de_Produtos: TDataModule},
  UFrm_Lista_de_Produtos in 'UFrm_Lista_de_Produtos.pas' {Frm_Lista_Produtos},
  UFrm_Cadastro_de_Produtos in 'UFrm_Cadastro_de_Produtos.pas' {Frm_Cadastro_de_Produtos},
  UDM_ListagemDePedidos in 'UDM_ListagemDePedidos.pas' {DM_Listagem_de_pedidos: TDataModule},
  UFrm_Lista_de_Pedidos in 'UFrm_Lista_de_Pedidos.pas' {Frm_Lista_Pedidos},
  UDM_Cadastro_de_Pedidos in 'UDM_Cadastro_de_Pedidos.pas' {DM_Cadastro_de_Pedidos: TDataModule},
  UFrm_Cadastro_de_Pedido in 'UFrm_Cadastro_de_Pedido.pas' {Frm_Cadastro_de_Pedido},
  UFrm_Cadastro_de_pedido_Cad_Item in 'UFrm_Cadastro_de_pedido_Cad_Item.pas' {Frm_Cadastro_de_Pedido_Cad_Item},
  UDM_ImpressaoDePedido in 'UDM_ImpressaoDePedido.pas' {DM_ImpressaoDePedido: TDataModule},
  UDM_PesquisaDeProduto_X_ClienteQueComprou in 'UDM_PesquisaDeProduto_X_ClienteQueComprou.pas' {DM_PesquisaDeProduto_X_ClienteQueComprou: TDataModule},
  UFrm_PesquisaDeProduto_X_ClienteEntreDatas in 'UFrm_PesquisaDeProduto_X_ClienteEntreDatas.pas' {Frm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas},
  UDM_PesquisaDeClientesPorCidade in 'UDM_PesquisaDeClientesPorCidade.pas' {DM_PesquisaDeClientesPorCidade: TDataModule},
  UFrm_PesquisaDeClientesPorCidade in 'UFrm_PesquisaDeClientesPorCidade.pas' {Frm_PesquisaDeClientesPorCidade},
  UFrm_PesquisaDeClientesPorCidade_PesqCidade in 'UFrm_PesquisaDeClientesPorCidade_PesqCidade.pas' {Frm_PesquisaDeClientesPorCidade_PesqCidade},
  UDM_PesqPedPorRepresentada_e_PorRepresentante in 'UDM_PesqPedPorRepresentada_e_PorRepresentante.pas' {DM_PesqPedPorRepresentada_e_PorRepresentante: TDataModule},
  U_Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante in 'U_Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante.pas' {Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante},
  UFrm_PesqPorCliente_Fabrica_Datas_PesqVendedor in 'UFrm_PesqPorCliente_Fabrica_Datas_PesqVendedor.pas' {Frm_PesqPorDataRepres_Fabrica_PesqVendedor},
  UFrm_PesqPorDataRepres_Fabrica_PesqRepresentada in 'UFrm_PesqPorDataRepres_Fabrica_PesqRepresentada.pas' {Frm_PesqPorDataRepres_Fabrica_PesqFabrica},
  UDM_TotalDePedidosPorCliente_X_Representada_X_Datas in 'UDM_TotalDePedidosPorCliente_X_Representada_X_Datas.pas' {DM_TotalDePedidosPorCliente_X_Representada_X_Datas: TDataModule},
  UFrmTotalDePedidosPorCliente_X_Representada_X_Datas in 'UFrmTotalDePedidosPorCliente_X_Representada_X_Datas.pas' {FrmTotalDePedidosPorCliente_X_Representada_X_Datas},
  UFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli in 'UFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli.pas' {FrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli},
  UFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqFab in 'UFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqFab.pas' {FrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab},
  UDM_PesqPorNumero in 'UDM_PesqPorNumero.pas' {DM_Pesq_PedidosPorNumero: TDataModule},
  UFrm_PesqPedidoPorNumero in 'UFrm_PesqPedidoPorNumero.pas' {Frm_PesqPedidoPorNumero},
  UFrm_PesqPedPorOC in 'UFrm_PesqPedPorOC.pas' {Frm_PesqPedPorOC},
  UFrm_Lista_de_Pedidos_ReplicarPedidos in 'UFrm_Lista_de_Pedidos_ReplicarPedidos.pas' {Frm_Lista_Pedidos_ReplicarPedidos},
  UDM_ListaClientesSemCompra in 'UDM_ListaClientesSemCompra.pas' {DM_ListaClientesSemCompra: TDataModule},
  UFrm_ListaClientesSemCompra in 'UFrm_ListaClientesSemCompra.pas' {Frm_ListaClientesSemCompra},
  UDM_TotalProdVendPorCliente in 'UDM_TotalProdVendPorCliente.pas' {DM_TotalProdVendPorCliente: TDataModule},
  UFrm_PesquisaSomaProdutosVendidosPorCliente in 'UFrm_PesquisaSomaProdutosVendidosPorCliente.pas' {Frm_PesquisaSomaProdutosVendidosPorCliente},
  UFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd in 'UFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd.pas' {Frm_PesquisaSomaProdutosVendidosPorCliente_PesqProd};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Principal, DM_Principal);
  Application.CreateForm(TDM_Login, DM_Login);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
