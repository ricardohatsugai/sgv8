unit UFrm_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Vcl.ToolWin, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Vendedores1: TMenuItem;
    ransportes1: TMenuItem;
    Pagamentos1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Bevel1: TBevel;
    Image1: TImage;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    StatusBar1: TStatusBar;
    Usurios1: TMenuItem;
    CadastrodeCidadeseEstados1: TMenuItem;
    Cidade1: TMenuItem;
    Estado1: TMenuItem;
    ToolButton4: TToolButton;
    Representadas1: TMenuItem;
    ToolButton_Industria: TToolButton;
    Produtos1: TMenuItem;
    Pedidos1: TMenuItem;
    Cadastro1: TMenuItem;
    ToolButton_Produtos: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Pesquisa1: TMenuItem;
    ProdutovendidoXClientequecomprou1: TMenuItem;
    ClientesporCidade1: TMenuItem;
    ToolButton7: TToolButton;
    otaldepedidosporRepresentadaporRepresentanteeporintervalodedatas1: TMenuItem;
    otaldepedidosdeumClienteXRepresentadaXDatas1: TMenuItem;
    Pedidospornmero1: TMenuItem;
    PedidosporOrdemdeCompra1: TMenuItem;
    Clientesqueestosemcomprapartirdeumadata1: TMenuItem;
    SomaTotaldeProdutoVendidoporCliente1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Clientes1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ransportes1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Representadas1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ProdutovendidoXClientequecomprou1Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure otaldepedidosporRepresentadaporRepresentanteeporintervalodedatas1Click(
      Sender: TObject);
    procedure otaldepedidosdeumClienteXRepresentadaXDatas1Click(
      Sender: TObject);
    procedure Pedidospornmero1Click(Sender: TObject);
    procedure PedidosporOrdemdeCompra1Click(Sender: TObject);
    procedure ClientesporCidade1Click(Sender: TObject);
    procedure Clientesqueestosemcomprapartirdeumadata1Click(Sender: TObject);
    procedure SomaTotaldeProdutoVendidoporCliente1Click(Sender: TObject);
  private
    { Private declarations }
    Function VersaoExe: String;
  public
    { Public declarations }
    procedure ListaClientes(Sender: TObject);
    procedure CadastroEstado(Sender: TObject);
    procedure CadastroCidades(Sender: TObject);
    procedure CadastroDeVendedores(Sender: TObject);
    procedure ListaProdutos(Sender: TObject);
    procedure ListaDePedidos(Sender: TObject);
    procedure PesquisaDeProdutos_X_paraQuemVendeu(Sender: TObject);
    procedure PesquisaDeClientesPorCidade(Sender: TObject);
    procedure PesquisaTotalDePedidosPorRepresentanteRepresentada_e_IntervaloDeDatas(Sender: TObject);
    procedure PesquisaPedidosPorNumero(Sender: TObject);
    procedure PesquisaPedidosPorOC(Sender: TObject);
    procedure PesquisaSomaProdutosVendidosPorCliente(Sender: TObject);
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses UFrm_ListaClientes, UDM_ListagemDeClientes, UDM_CadEstado_e_Estado,
  UFrm_CadEstado, UFrm_CadCidades, UDM_Pagamento, UFrm_Pagamentos,
  UDM_Cadastro_de_Vendedores, UFrm_Cadastro_de_Vendedores,
  UDM_Cadastro_de_Transportes, UFrm_Cadastro_de_Transportes, UFrm_Login,
  UDM_Principal, UFrm_Cadastro_de_Usuarios, UDM_Login,
  UDM_Cadastro_de_Representadas, UFrm_Lista_de_Representadas,
  UDM_Cadastro_de_Produtos, UFrm_Lista_de_Produtos, UDM_ListagemDePedidos,
  UFrm_Lista_de_Pedidos, UDM_PesquisaDeProduto_X_ClienteQueComprou,
  UFrm_PesquisaDeProduto_X_ClienteEntreDatas, UDM_PesquisaDeClientesPorCidade,
  UFrm_PesquisaDeClientesPorCidade,
  U_Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante,
  UDM_PesqPedPorRepresentada_e_PorRepresentante,
  UDM_TotalDePedidosPorCliente_X_Representada_X_Datas,
  UFrmTotalDePedidosPorCliente_X_Representada_X_Datas, UDM_PesqPorNumero,
  UFrm_PesqPedidoPorNumero, UFrm_PesqPedPorOC, UDM_ListaClientesSemCompra,
  UFrm_ListaClientesSemCompra, UDM_TotalProdVendPorCliente,
  UFrm_PesquisaSomaProdutosVendidosPorCliente;

//Procedure para chamar a tela de cadastro de estados
procedure TFrm_Principal.Cadastro1Click(Sender: TObject);
begin
ListaDePedidos(Sender);
end;

procedure TFrm_Principal.CadastroCidades(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_CadEstado_e_Cidade, DM_CadEstado_e_Cidade);
  Application.CreateForm(TFrm_CadCidades, Frm_CadCidades);
  DM_CadEstado_e_Cidade.FDQ_Estado.Active := True;
  DM_CadEstado_e_Cidade.FDQ_Cidade.Active := True;
  Frm_CadCidades.ShowModal;
  DM_CadEstado_e_Cidade.FDQ_Cidade.Active := False;
  DM_CadEstado_e_Cidade.FDQ_Estado.Active := False;
Finally
  FreeAndNil(Frm_CadCidades);
  FreeAndNil(DM_CadEstado_e_Cidade);
End;
end;

procedure TFrm_Principal.CadastroDeVendedores(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Cadastro_de_Vendedores, DM_Cadastro_de_Vendedores);
  Application.CreateForm(TFrm_Cadastro_de_Vendedores, Frm_Cadastro_de_Vendedores);
  DM_Cadastro_de_Vendedores.FDQ_Vendedores.Active := True;
  DM_Cadastro_de_Vendedores.FDQ_Cidade.Active := True;
  DM_Cadastro_de_Vendedores.FDQ_Estado.Active := True;
  Frm_Cadastro_de_Vendedores.ShowModal;
  if DM_Cadastro_de_Vendedores.FDQ_Vendedores.UpdatesPending then
    DM_Cadastro_de_Vendedores.FDQ_Vendedores.CancelUpdates;
  DM_Cadastro_de_Vendedores.FDQ_Vendedores.Active := False;
  DM_Cadastro_de_Vendedores.FDQ_Cidade.Active := False;
  DM_Cadastro_de_Vendedores.FDQ_Estado.Active := False;
Finally
  FreeAndNil(Frm_Cadastro_de_Vendedores);
  FreeAndNil(DM_Cadastro_de_Vendedores);
End;
end;

procedure TFrm_Principal.CadastroEstado(Sender: TObject);
begin
try
  Application.CreateForm(TDM_CadEstado_e_Cidade, DM_CadEstado_e_Cidade);
  Application.CreateForm(TFrm_CadEstado, Frm_CadEstado);
  DM_CadEstado_e_Cidade.FDQ_Estado.Active := True;
  Frm_CadEstado.ShowModal;
  DM_CadEstado_e_Cidade.FDQ_Estado.Active := False;
finally
  FreeAndNil(Frm_CadEstado);
  FreeAndNil(DM_CadEstado_e_Cidade);
end;
end;

procedure TFrm_Principal.Cidade1Click(Sender: TObject);
begin
CadastroCidades(Sender);
end;

procedure TFrm_Principal.Clientes1Click(Sender: TObject);
begin
ListaClientes(Sender);
end;

procedure TFrm_Principal.ClientesporCidade1Click(Sender: TObject);
begin
PesquisaDeClientesPorCidade(Sender);
end;

procedure TFrm_Principal.Clientesqueestosemcomprapartirdeumadata1Click(
  Sender: TObject);
begin
  try
    Application.CreateForm(TDM_ListaClientesSemCompra, DM_ListaClientesSemCompra);
    Application.CreateForm(TFrm_ListaClientesSemCompra, Frm_ListaClientesSemCompra);
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompra.Params[0].AsDate := Now - 40;
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompra.Params[1].AsDate := Now;
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompra.Active := True;
    Frm_ListaClientesSemCompra.ShowModal;
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompra.Active := False;
  finally
    FreeAndNil(Frm_ListaClientesSemCompra);
    FreeAndNil(DM_ListaClientesSemCompra);
  end;
end;

procedure TFrm_Principal.Estado1Click(Sender: TObject);
begin
CadastroEstado(Sender);
end;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;


procedure TFrm_Principal.FormShow(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrm_Login, Frm_Login);
    DM_Login.FDQ_Usuarios.Active:=True;
    Frm_Login.ShowModal;
    DM_Login.FDQ_Usuarios.Active:=False;

  Finally
    FreeAndNil(Frm_Login);
  End;

  StatusBar1.Panels[0].Text := 'Usuário logado: '+DM_Login.FDQ_UsuariosNOME.AsString;
  Caption := 'Trindade Representações Comerciais Ltda. - Versão ' + VersaoExe;
end;



//Esta procedure chama a tela de listagem de cadastro de Clientes
procedure TFrm_Principal.ListaClientes(Sender: TObject);
begin
Try
  Application.CreateForm(TFrm_ListaClientes, Frm_ListaClientes);
  Application.CreateForm(TDM_ListagemDeClientes, DM_ListagemDeClientes);
  DM_ListagemDeClientes.FDQ_ListaClientes.Active := True;
  Frm_ListaClientes.ShowModal;
  DM_ListagemDeClientes.FDQ_ListaClientes.Active := False;
Finally
  FreeAndNil(Frm_ListaClientes);
  FreeAndNil(DM_ListagemDeClientes);
End;
end;

procedure TFrm_Principal.ListaDePedidos(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Listagem_de_pedidos, DM_Listagem_de_pedidos);
  Application.CreateForm(TFrm_Lista_Pedidos, Frm_Lista_Pedidos);

  DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Active := True;
  DM_Listagem_de_pedidos.FDQ_Cliente.Active := True;
  DM_Listagem_de_pedidos.FDQ_Fabrica.Active := True;
  DM_Listagem_de_pedidos.FDQ_Pagamento.Active := True;
  DM_Listagem_de_pedidos.FDQ_Vendedor.Active := True;
  Frm_Lista_Pedidos.ShowModal;
  // Exibe o formulário de listagem de pedidos de forma modal.
  DM_Listagem_de_pedidos.FDQ_ListagemDePedidos.Active := False;
  DM_Listagem_de_pedidos.FDQ_Cliente.Active := False;
  DM_Listagem_de_pedidos.FDQ_Fabrica.Active := False;
  DM_Listagem_de_pedidos.FDQ_Pagamento.Active := False;
  DM_Listagem_de_pedidos.FDQ_Vendedor.Active := False;

Finally
  FreeAndNil(Frm_Lista_Pedidos);
  FreeAndNil(DM_Listagem_de_pedidos);
End;
end;

procedure TFrm_Principal.ListaProdutos(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Cadastro_de_Produtos, DM_Cadastro_de_Produtos);
  Application.CreateForm(TFrm_Lista_Produtos, Frm_Lista_Produtos);
  DM_Cadastro_de_Produtos.FDQ_ListaProdutos.Active := True;
  Frm_Lista_Produtos.ShowModal;
  DM_Cadastro_de_Produtos.FDQ_ListaProdutos.Active := False;
Finally
  FreeAndNil(Frm_Lista_Produtos);
  FreeAndNil(DM_Cadastro_de_Produtos);
End;
end;

procedure TFrm_Principal.otaldepedidosdeumClienteXRepresentadaXDatas1Click(
  Sender: TObject);
begin
  Try
    Application.CreateForm(TDM_TotalDePedidosPorCliente_X_Representada_X_Datas, DM_TotalDePedidosPorCliente_X_Representada_X_Datas);
    Application.CreateForm(TFrmTotalDePedidosPorCliente_X_Representada_X_Datas, FrmTotalDePedidosPorCliente_X_Representada_X_Datas);
    DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Active := True;
    DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Cliente.Active := True;
    DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Fabricas.Active := True;
    FrmTotalDePedidosPorCliente_X_Representada_X_Datas.ShowModal;
    DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Active := False;
    DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Cliente.Active := False;
    DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Fabricas.Active := False;
  Finally
    FreeAndNil(FrmTotalDePedidosPorCliente_X_Representada_X_Datas);
    FreeAndNil(DM_TotalDePedidosPorCliente_X_Representada_X_Datas);
  End;
end;

procedure TFrm_Principal.otaldepedidosporRepresentadaporRepresentanteeporintervalodedatas1Click(
  Sender: TObject);
begin
PesquisaTotalDePedidosPorRepresentanteRepresentada_e_IntervaloDeDatas(Sender);
end;

procedure TFrm_Principal.Pagamentos1Click(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Pagamentos, DM_Pagamentos);
  Application.CreateForm(TFrm_Pagamentos, Frm_Pagamentos);
  DM_Pagamentos.FDQ_Pagamento.Active := True;
  DM_Pagamentos.FDT_Fabricas.Active := True;
  Frm_Pagamentos.ShowModal;
  DM_Pagamentos.FDQ_Pagamento.Active := false;
  DM_Pagamentos.FDT_Fabricas.Active := False;
Finally
  FreeAndNil(Frm_Pagamentos);
  FreeAndNil(DM_Pagamentos);
End;
end;

procedure TFrm_Principal.Pedidospornmero1Click(Sender: TObject);
begin
PesquisaPedidosPorNumero(Sender);
end;

procedure TFrm_Principal.PedidosporOrdemdeCompra1Click(Sender: TObject);
begin
PesquisaPedidosPorOC(Sender);
end;

procedure TFrm_Principal.PesquisaDeClientesPorCidade(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_PesquisaDeClientesPorCidade, DM_PesquisaDeClientesPorCidade);
  Application.CreateForm(TFrm_PesquisaDeClientesPorCidade, Frm_PesquisaDeClientesPorCidade);
  DM_PesquisaDeClientesPorCidade.FDQ_PesqClientesPorCidade.Active := True;
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidade.Active := True;
  Frm_PesquisaDeClientesPorCidade.ShowModal;
  DM_PesquisaDeClientesPorCidade.FDQ_PesqClientesPorCidade.Active := False;
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidade.Active := False;
Finally
  FreeAndNil(Frm_PesquisaDeClientesPorCidade);
  FreeAndNil(DM_PesquisaDeClientesPorCidade);
End;
end;

procedure TFrm_Principal.PesquisaDeProdutos_X_paraQuemVendeu(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_PesquisaDeProduto_X_ClienteQueComprou, DM_PesquisaDeProduto_X_ClienteQueComprou);
  Application.CreateForm(TFrm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas, Frm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas);
  DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Pesq_Prod_X_Cliente.Active := True;
  DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Produto.Active := True;
  Frm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas.ShowModal;
  DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Produto.Active := False;
  DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Pesq_Prod_X_Cliente.Active := False;
Finally
  FreeAndNil(Frm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas);
  FreeAndNil(DM_PesquisaDeProduto_X_ClienteQueComprou);
End;
end;

procedure TFrm_Principal.PesquisaPedidosPorNumero(Sender: TObject);
begin
 Try
   Application.CreateForm(TDM_Pesq_PedidosPorNumero, DM_Pesq_PedidosPorNumero);
   Application.CreateForm(TFrm_PesqPedidoPorNumero, Frm_PesqPedidoPorNumero);
   DM_Pesq_PedidosPorNumero.FDQ_Pesquisa.Active := True;
   Frm_PesqPedidoPorNumero.ShowModal;
   DM_Pesq_PedidosPorNumero.FDQ_Pesquisa.Active := False;
 Finally
   FreeAndNil(DM_Pesq_PedidosPorNumero);
   FreeAndNil(Frm_PesqPedidoPorNumero);
 End;
end;

procedure TFrm_Principal.PesquisaPedidosPorOC(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Pesq_PedidosPorNumero, DM_Pesq_PedidosPorNumero);
  Application.CreateForm(TFrm_PesqPedPorOC, Frm_PesqPedPorOC);
  DM_Pesq_PedidosPorNumero.FDQ_Pesq_OC.Active := True;
  Frm_PesqPedPorOC.ShowModal;
  DM_Pesq_PedidosPorNumero.FDQ_Pesq_OC.Active := False;
Finally
  FreeAndNil(Frm_PesqPedPorOC);
  FreeAndNil(DM_Pesq_PedidosPorNumero);
End;
end;

{ Pesquisa de Soma Total de Produtos Vendidos por Cliente, em um intervalo de Datas }
procedure TFrm_Principal.PesquisaSomaProdutosVendidosPorCliente(
  Sender: TObject);
begin
Try
  Application.CreateForm(TDM_TotalProdVendPorCliente, DM_TotalProdVendPorCliente);
  Application.CreateForm(TFrm_PesquisaSomaProdutosVendidosPorCliente, Frm_PesquisaSomaProdutosVendidosPorCliente);
  DM_TotalProdVendPorCliente.FDQ_Consulta.Active := True;
  DM_TotalProdVendPorCliente.FDQ_Produto.Active := True;
  DM_TotalProdVendPorCliente.FDQ_ProdutoPesq.Active := True;
  Frm_PesquisaSomaProdutosVendidosPorCliente.ShowModal;
  if DM_TotalProdVendPorCliente.FDQ_Consulta.Active = True then
    DM_TotalProdVendPorCliente.FDQ_Consulta.Active := False;

  DM_TotalProdVendPorCliente.FDQ_Produto.Active := False;
  DM_TotalProdVendPorCliente.FDQ_ProdutoPesq.Active := False;

finally
  FreeAndNil(Frm_PesquisaSomaProdutosVendidosPorCliente);
  FreeAndNil(DM_TotalProdVendPorCliente);
end;
end;

procedure TFrm_Principal.PesquisaTotalDePedidosPorRepresentanteRepresentada_e_IntervaloDeDatas(
  Sender: TObject);
begin
Try
  Application.CreateForm(TDM_PesqPedPorRepresentada_e_PorRepresentante, DM_PesqPedPorRepresentada_e_PorRepresentante);
  Application.CreateForm(TFrm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante, Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante);
  DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.Active := True;
  DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Fabrica.Active := True;
  DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Vendedor.Active := True;
  Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante.ShowModal;
  DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.Active := False;
  DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Fabrica.Active := False;
  DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Vendedor.Active := False;
Finally
  FreeAndNil(Frm_PesquisaTotalDePedidosPorRepresentada_e_PorRepresentante);
  FreeAndNil(DM_PesqPedPorRepresentada_e_PorRepresentante);
End;
end;

procedure TFrm_Principal.Produtos1Click(Sender: TObject);
begin
ListaProdutos(Sender);
end;

procedure TFrm_Principal.ProdutovendidoXClientequecomprou1Click(
  Sender: TObject);
begin
PesquisaDeProdutos_X_paraQuemVendeu(Sender);
end;

procedure TFrm_Principal.ransportes1Click(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Cadastro_Transportes, DM_Cadastro_Transportes);
  Application.CreateForm(TFrm_Cadastro_de_Transportes, Frm_Cadastro_de_Transportes);
  DM_Cadastro_Transportes.FDQ_Cad_Transportes.Active := True;
  DM_Cadastro_Transportes.FDQ_Cidade.Active := True;
  DM_Cadastro_Transportes.FDQ_Estado.Active := True;
  Frm_Cadastro_de_Transportes.ShowModal;
  if DM_Cadastro_Transportes.FDQ_Cad_Transportes.State in [dsEdit, dsInsert] then
  begin
    DM_Cadastro_Transportes.FDQ_Cad_Transportes.Cancel;
    DM_Cadastro_Transportes.FDQ_Cad_Transportes.CancelUpdates;
  end;
  DM_Cadastro_Transportes.FDQ_Cad_Transportes.Active := False;
  DM_Cadastro_Transportes.FDQ_Cidade.Active := False;
  DM_Cadastro_Transportes.FDQ_Estado.Active := False;
Finally
  FreeAndNil(Frm_Cadastro_de_Transportes);
  FreeAndNil(DM_Cadastro_Transportes);
End;
end;

procedure TFrm_Principal.Representadas1Click(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Representadas, DM_Representadas);
  Application.CreateForm(TFrm_Lista_Representadas, Frm_Lista_Representadas);
  DM_Representadas.FDQ_Lista_Representadas.open;
  Frm_Lista_Representadas.ShowModal;
  DM_Representadas.FDQ_Lista_Representadas.Close;
Finally
  FreeAndNil(Frm_Lista_Representadas);
  FreeAndNil(DM_Representadas);
End;
end;

procedure TFrm_Principal.SomaTotaldeProdutoVendidoporCliente1Click(
  Sender: TObject);
begin
PesquisaSomaProdutosVendidosPorCliente(Sender);
end;

procedure TFrm_Principal.ToolButton1Click(Sender: TObject);
begin
ListaClientes(Sender);
end;

procedure TFrm_Principal.ToolButton2Click(Sender: TObject);
begin
CadastroDeVendedores(Sender);
end;

procedure TFrm_Principal.ToolButton5Click(Sender: TObject);
begin
ListaDePedidos(Sender);
end;

procedure TFrm_Principal.ToolButton6Click(Sender: TObject);
begin
PesquisaDeProdutos_X_paraQuemVendeu(Sender);
end;

procedure TFrm_Principal.ToolButton7Click(Sender: TObject);
begin
PesquisaDeClientesPorCidade(Sender);
end;

procedure TFrm_Principal.Usurios1Click(Sender: TObject);
begin
Try
  Application.CreateForm(TFrm_Cadastro_de_Usuarios, Frm_Cadastro_de_Usuarios);
  DM_Principal.FDT_Usuarios.Active := True;
  Frm_Cadastro_de_Usuarios.ShowModal;
  DM_Principal.FDT_Usuarios.Active := False;
Finally
  FreeAndNil(Frm_Cadastro_de_Usuarios);
End;
end;

procedure TFrm_Principal.Vendedores1Click(Sender: TObject);
begin
CadastroDeVendedores(Sender);
end;



function TFrm_Principal.VersaoExe: String;
type
    PFFI = ^vs_FixedFileInfo;
var
    F : PFFI;
    Handle : Dword;
    Len : Longint;
    Data : Pchar;
    Buffer : Pointer;
    Tamanho : Dword;
    Parquivo: Pchar;
    Arquivo : String;
begin
    Arquivo := Application.ExeName;
    Parquivo := StrAlloc(Length(Arquivo) + 1);
    StrPcopy(Parquivo, Arquivo);
    Len := GetFileVersionInfoSize(Parquivo, Handle);
    Result := '';
        if Len > 0 then
        begin
            Data:=StrAlloc(Len+1);
            if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
            begin
                VerQueryValue(Data, '\',Buffer,Tamanho);
                F := PFFI(Buffer);
                Result := Format('%d.%d.%d.%d',[HiWord(F^.dwFileVersionMs),LoWord(F^.dwFileVersionMs),HiWord(F^.dwFileVersionLs),Loword(F^.dwFileVersionLs)]);
            end;
            StrDispose(Data);
        end;
        StrDispose(Parquivo);

end;

end.
