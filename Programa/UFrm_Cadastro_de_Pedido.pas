unit UFrm_Cadastro_de_Pedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Param;

type
  TFrm_Cadastro_de_Pedido = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Lbl_NumeroFabrica: TLabel;
    DBEdit_Numero: TDBEdit;
    Lbl_OrdemDeCompra: TLabel;
    DBEdit_OrdemDeCombra: TDBEdit;
    Lbl_Data: TLabel;
    DBEdit_Data: TDBEdit;
    Lbl_DataProgramacao: TLabel;
    DBEdit_DataProgramacao: TDBEdit;
    Lbl_Cliente: TLabel;
    DBLookupCMB_Cliente: TDBLookupComboBox;
    Lbl_Fabrica: TLabel;
    DBLookupCMB_Fabrica: TDBLookupComboBox;
    Lbl_Pagamento: TLabel;
    DBLookupCMB_Pagamento: TDBLookupComboBox;
    Lbl_Transporte: TLabel;
    DBLookupCMB_Transporte: TDBLookupComboBox;
    Lbl_Vendedor: TLabel;
    DBLookupCMB_Vendedor: TDBLookupComboBox;
    Lbl_Frete: TLabel;
    DBLookupCMB_Frete: TDBLookupComboBox;
    Lbl_Tipo: TLabel;
    DBComboBox_Tipo: TDBComboBox;
    Lbl_Desconto1: TLabel;
    DBEdit_Desconto1: TDBEdit;
    Lbl_Desconto2: TLabel;
    DBEdit_Desconto2: TDBEdit;
    Lbl_Desconto3: TLabel;
    DBEdit_Desconto3: TDBEdit;
    Lbl_Desconto4: TLabel;
    DBEdit_Desconto4: TDBEdit;
    Lbl_Desconto5: TLabel;
    DBEdit_Desconto5: TDBEdit;
    Lbl_Desconto6: TLabel;
    DBEdit_Desconto6: TDBEdit;
    Lbl_Coificiente: TLabel;
    DBEdit_Coeficiente: TDBEdit;
    Lbl_Obs: TLabel;
    Lbl_ItensDePedido: TLabel;
    Panel2: TPanel;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Bevel3: TBevel;
    Lbl_Total: TLabel;
    DBEdit_Total_S_IPI: TDBEdit;
    Lbl_Total_C_IPI: TLabel;
    DBEdit_Total_C_IPI: TDBEdit;
    Btn_Alterar: TBitBtn;
    Btn_Incluir: TBitBtn;
    Btn_Excluir: TBitBtn;
    Btn_Salvar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    DBMemo1: TDBMemo;
    Btn_Recalcular: TBitBtn;
    procedure DBLookupCMB_FabricaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure DBEdit_Desconto1Exit(Sender: TObject);
    procedure DBEdit_Desconto2Exit(Sender: TObject);
    procedure DBEdit_Desconto3Exit(Sender: TObject);
    procedure DBEdit_Desconto4Exit(Sender: TObject);
    procedure DBEdit_Desconto5Exit(Sender: TObject);
    procedure DBEdit_Desconto6Exit(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_SalvarClick(Sender: TObject);
    procedure Btn_RecalcularClick(Sender: TObject);
  private
    procedure CalculaDesconto(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_de_Pedido: TFrm_Cadastro_de_Pedido;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Pedidos, UDM_ListagemDePedidos,
  UFrm_Cadastro_de_pedido_Cad_Item, UDM_ImpressaoDePedido, UDM_Principal;


procedure TFrm_Cadastro_de_Pedido.Btn_AlterarClick(Sender: TObject);
begin
Try
  // aqui abaixo faremos uma sequência de instruções para subtrair os valores Total S/IPI e Total C/IPI da tabela PEDIDO.
  if DM_Cadastro_de_Pedidos.FDQ_Pedido.State in [dsBrowse] then
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;

  {Passa o parâmetro código do Cliente para ('CODCLI'), da tabela COD_PROD_CLIENTE}
  if DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active = True then
    DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active:=False;

  DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.ParamByName('CODCLI').Value:=
    DM_Cadastro_de_Pedidos.FDQ_PedidoCODCLIENTE.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active:=True;

  // Esta instrução abaixo subtrai o valor total do item do pedido.
  DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.AsCurrency - DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency;
  DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.AsCurrency - DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.AsCurrency;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;

  Application.CreateForm(TFrm_Cadastro_de_Pedido_Cad_Item, Frm_Cadastro_de_Pedido_Cad_Item);

  DM_Cadastro_de_Pedidos.FDQ_Itens.Edit;

  // Esta instrução abaixo para os parametros de pesquisa da tabela Produtos, para que não precise pesquisar
  // novamente o produto. Assim agilizando o tempo de trabalho do usuário.
  DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('REF').AsString := DM_Cadastro_de_Pedidos.FDQ_ItensREFERENCIA.AsString;
  DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('COD_FABRICA').AsInteger := DM_Cadastro_de_Pedidos.FDQ_PedidoCODFABRICA.AsInteger;

  Frm_Cadastro_de_Pedido_Cad_Item.ShowModal;

  if DM_Cadastro_de_Pedidos.FDQ_Itens.State in [dsEdit, dsInsert] then
  begin
  {No caso da alteração do item seja cancelada, o valor total do item é devolvido para o total da tabela PEDIDO}
    DM_Cadastro_de_Pedidos.FDQ_Itens.Cancel;
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;
    DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.Value :=
      DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.AsCurrency + DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency;
    DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.AsCurrency
      + DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.AsCurrency;
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;
  end else
  begin
  {No caso da aleração seja efetuada com sucesso, o valor total do item é efetivadamente estornado da tabela PEDIDO}
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;
    DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.AsCurrency +
      DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency;
    DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.AsCurrency +
      DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.AsCurrency;
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;
  end;

  DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;

Finally
  FreeAndNil(Frm_Cadastro_de_Pedido_Cad_Item);
End;
end;

procedure TFrm_Cadastro_de_Pedido.Btn_CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Cadastro_de_Pedido.Btn_ExcluirClick(Sender: TObject);
var cont : Integer;
begin
cont := 0;

if Application.MessageBox('Deseja realmente excluir?','Pergunta',MB_YESNO) = IDYES then
begin
  // aqui abaixo faremos uma sequência de instruções para subtrair os valores Total S/IPI e Total C/IPI da tabela PEDIDO.
  if DM_Cadastro_de_Pedidos.FDQ_Itens.State in [dsEdit, dsInsert]  then
    DM_Cadastro_de_Pedidos.FDQ_Itens.Cancel;

  if DM_Cadastro_de_Pedidos.FDQ_Pedido.State in [dsBrowse] then
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;

  // Esta instrução abaixo subtrai o valor total do item do pedido.
  DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.AsCurrency - DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency;
  DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.AsCurrency - DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.AsCurrency;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Delete;
end;

{Esta rotina foi a solução encontrada para renumerar os itens de um pedido quando deletado.
Ex.: deletado o item 3, de 1 a 5. Ele vai renumerar de 1 a 4.}
DM_Cadastro_de_Pedidos.FDQ_Itens.First;
while not DM_Cadastro_de_Pedidos.FDQ_Itens.Eof do
begin
  cont := cont + 1;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Edit;
  DM_Cadastro_de_Pedidos.FDQ_ItensITEM.Value := cont;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Post;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Next;
end;
DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;
end;

procedure TFrm_Cadastro_de_Pedido.Btn_IncluirClick(Sender: TObject);
var max_item : Integer;
begin
Try
  Application.CreateForm(TFrm_Cadastro_de_Pedido_Cad_Item, Frm_Cadastro_de_Pedido_Cad_Item);
  if DM_Cadastro_de_Pedidos.FDQ_Pedido.State in [dsEdit,dsInsert] then
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;


  {Passa o parâmetro código do Cliente para ('CODCLI'), da tabela COD_PROD_CLIENTE}
  if DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active = True then
    DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active:=False;

  DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.ParamByName('CODCLI').Value:=
    DM_Cadastro_de_Pedidos.FDQ_PedidoCODCLIENTE.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active:=True;

  DM_Cadastro_de_Pedidos.FDQ_Itens.Last;
  max_item := DM_Cadastro_de_Pedidos.FDQ_ItensITEM.Value + 1;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Insert;

  DM_Cadastro_de_Pedidos.FDQ_ItensITEM.Value := max_item;

  if DBEdit_Desconto1.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO1.Value := StrToCurr(DBEdit_Desconto1.Text)
  else
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO1.Value := 0;

  if DBEdit_Desconto2.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO2.Value := StrToCurr(DBEdit_Desconto2.Text)
  else
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO2.Value := 0;

  if DBEdit_Desconto3.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO3.Value := StrToCurr(DBEdit_Desconto3.Text)
  else
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO3.Value := 0;

  if DBEdit_Desconto4.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO4.Value := StrToCurr(DBEdit_Desconto4.Text)
  else
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO4.Value := 0;

  if DBEdit_Desconto5.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO5.Value := StrToCurr(DBEdit_Desconto5.Text)
  else
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO5.Value := 0;

  if DBEdit_Desconto6.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO6.Value := StrToCurr(DBEdit_Desconto6.Text)
  else
    DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO6.Value := 0;

  if DBEdit_Coeficiente.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.Value := StrToCurr(DBEdit_Coeficiente.Text)
  else
    DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.Value := 0;

  DM_Cadastro_de_Pedidos.FDQ_ItensCOD_FATURADO.AsInteger := 2;
  Frm_Cadastro_de_Pedido_Cad_Item.Caption := 'Cadastro de item de pedido';
  Frm_Cadastro_de_Pedido_Cad_Item.ShowModal;

  if DM_Cadastro_de_Pedidos.FDQ_Itens.State in [dsInsert, dsEdit] then
    DM_Cadastro_de_Pedidos.FDQ_Itens.Cancel
  else
  begin
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;
    DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.AsCurrency +
      DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency;
    DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.AsCurrency +
      DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.AsCurrency;
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;
  end;

  DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;

Finally
  FreeAndNil(Frm_Cadastro_de_Pedido_Cad_Item);
End;
end;

procedure TFrm_Cadastro_de_Pedido.Btn_RecalcularClick(Sender: TObject);
var marcador : TBookmark;
var total, total_ipi : Currency;
begin
total := 0; total_ipi := 0;
  // Marca a linha em que o cursor está no item do pedido.
  marcador := DM_Cadastro_de_Pedidos.FDQ_Itens.GetBookmark;

  if DM_Cadastro_de_Pedidos.FDQ_Pedido.State in [dsEdit, dsInsert] then
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;

  DM_Cadastro_de_Pedidos.FDQ_Itens.First;

  while not DM_Cadastro_de_Pedidos.FDQ_Itens.Eof do
  begin
    DM_Cadastro_de_Pedidos.FDQ_Produtos.Active := False;
    DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('ref').Value := DM_Cadastro_de_Pedidos.FDQ_ItensREFERENCIA.AsString;
    DM_Cadastro_de_Pedidos.FDQ_Produtos.Active := True;
    DM_Cadastro_de_Pedidos.FDQ_Itens.Edit;
    DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.Value := DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.Value * DM_Cadastro_de_Pedidos.FDQ_ProdutosPRECO.Value;
    DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.Value := DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.Value * DM_Cadastro_de_Pedidos.FDQ_ItensQUANT.Value;
    DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.Value := DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.Value +
      (DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.Value * (DM_Cadastro_de_Pedidos.FDQ_ItensIPI.Value / 100));
    DM_Cadastro_de_Pedidos.FDQ_Itens.Post;
    total := total + DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency;
    total_ipi := total_ipi + DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.AsCurrency;
    DM_Cadastro_de_Pedidos.FDQ_Itens.Next;
  end;

  DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;
  DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL.Value := total;
  DM_Cadastro_de_Pedidos.FDQ_PedidoTOTAL_CIPI.Value := total_ipi;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;

  DM_Cadastro_de_Pedidos.FDQ_Itens.GotoBookmark(marcador);
end;

procedure TFrm_Cadastro_de_Pedido.Btn_SalvarClick(Sender: TObject);
begin
if DM_Cadastro_de_Pedidos.FDQ_Itens.State in [dsEdit,dsInsert] then
  DM_Cadastro_de_Pedidos.FDQ_Itens.Post;

if DM_Cadastro_de_Pedidos.FDQ_Pedido.State in [dsEdit,dsInsert] then
DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;

DM_Cadastro_de_Pedidos.FDQ_Pedido.ApplyUpdates(-1);
DM_Cadastro_de_Pedidos.FDQ_Itens.ApplyUpdates(-1);
DM_Cadastro_de_Pedidos.FDQ_Pedido.CommitUpdates;
DM_Cadastro_de_Pedidos.FDQ_Itens.CommitUpdates;

// Se o campo OC (Número de ordem de compra) estiver vazio, ele receberá o número de código do registro do pedido
// no banco de dados.
if DM_Cadastro_de_Pedidos.FDQ_PedidoOC.IsNull then
begin
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;
  DM_Cadastro_de_Pedidos.FDQ_PedidoOC.AsString := DM_Cadastro_de_Pedidos.FDQ_PedidoCODIGO.AsString;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Post;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.ApplyUpdates(-1);
  DM_Cadastro_de_Pedidos.FDQ_Pedido.CommitUpdates;
end;

{Impressão de pedido}
Application.CreateForm(TDM_ImpressaoDePedido, DM_ImpressaoDePedido);
DM_ImpressaoDePedido.FDQ_Pedido.ParamByName('CODIGO').AsInteger := DM_Cadastro_de_Pedidos.FDQ_PedidoCODIGO.Value;
DM_ImpressaoDePedido.FDQ_Pedido.Active := True;
DM_ImpressaoDePedido.FDQ_Itens.Active := True;
DM_ImpressaoDePedido.FDQ_Produtos.Active := True;
DM_ImpressaoDePedido.FDQ_Cliente.Active := True;
DM_ImpressaoDePedido.FDQ_Cidade.Active := True;
DM_ImpressaoDePedido.FDQ_Estado.Active := True;
DM_ImpressaoDePedido.FDQ_Vendedor.Active := True;
DM_ImpressaoDePedido.FDQ_Fabrica.Active := True;
DM_ImpressaoDePedido.FDQ_Pagamento.Active := True;
DM_ImpressaoDePedido.FDQ_Transporte.Active := True;
DM_ImpressaoDePedido.FDQ_Frete.Active := True;
DM_ImpressaoDePedido.frxReport1.LoadFromFile('C:\sgv8\Relatorios\pedido.fr3');
DM_ImpressaoDePedido.frxReport1.ShowReport;
DM_ImpressaoDePedido.FDQ_Pedido.Active := False;
DM_ImpressaoDePedido.FDQ_Itens.Active := False;
DM_ImpressaoDePedido.FDQ_Produtos.Active := False;
DM_ImpressaoDePedido.FDQ_Cliente.Active := False;
DM_ImpressaoDePedido.FDQ_Cidade.Active := False;
DM_ImpressaoDePedido.FDQ_Estado.Active := False;
DM_ImpressaoDePedido.FDQ_Vendedor.Active := False;
DM_ImpressaoDePedido.FDQ_Fabrica.Active := False;
DM_ImpressaoDePedido.FDQ_Pagamento.Active := False;
DM_ImpressaoDePedido.FDQ_Transporte.Active := False;
DM_ImpressaoDePedido.FDQ_Frete.Active := False;
FreeAndNil(DM_ImpressaoDePedido);

DM_Principal.FDConnection1.CommitRetaining;


Close;

end;

procedure TFrm_Cadastro_de_Pedido.CalculaDesconto(Sender: TObject);
begin
  if DBEdit_Desconto1.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency := (100 - DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO1.AsCurrency)/100;

    if DBEdit_Desconto2.Text <> '' then
      DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency -
      ((DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO2.AsCurrency)/100));

      if DBEdit_Desconto3.Text <> '' then
        DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency -
        ((DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO3.AsCurrency)/100));

        if DBEdit_Desconto4.Text <> '' then
          DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency -
          ((DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO4.AsCurrency)/100));

          if DBEdit_Desconto5.Text <> '' then
            DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency -
           ((DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO5.AsCurrency)/100));

           if DBEdit_Desconto6.Text <> '' then
             DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency -
            ((DM_Cadastro_de_Pedidos.FDQ_PedidoCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_PedidoDESCONTO6.AsCurrency)/100));

  {if DBEditDesc1.Text <> '' then
  DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency := (100 - DMcadPedidos.CDSmestreDESCONTO1.AsCurrency)/100;

  if DBEditDesc2.Text <> '' then
   DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency := (DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency - ((
    DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency * DMcadPedidos.CDSmestreDESCONTO2.AsCurrency)/100 ));

   if DBEditDesc3.Text <> '' then
    DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency := (DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency - ((
    DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency * DMcadPedidos.CDSmestreDESCONTO3.AsCurrency)/100 ));

    if DBEditDesc4.Text <> '' then
     DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency := (DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency - ((
     DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency * DMcadPedidos.CDSmestreDESCONTO4.AsCurrency)/100 ));

     if DBEditDesc5.Text <> '' then
      DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency := (DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency - ((
      DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency * DMcadPedidos.CDSmestreDESCONTO5.AsCurrency)/100 ));

      if DBEditDesc6.Text <> '' then
       DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency := (DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency - ((
       DMcadPedidos.CDSmestreCOIFICIENTE.AsCurrency * DMcadPedidos.CDSmestreDESCONTO6.AsCurrency)/100 ));}
end;

procedure TFrm_Cadastro_de_Pedido.DBEdit_Desconto1Exit(Sender: TObject);
begin
CalculaDesconto(Sender);
end;

procedure TFrm_Cadastro_de_Pedido.DBEdit_Desconto2Exit(Sender: TObject);
begin
CalculaDesconto(Sender);
end;

procedure TFrm_Cadastro_de_Pedido.DBEdit_Desconto3Exit(Sender: TObject);
begin
CalculaDesconto(Sender);
end;

procedure TFrm_Cadastro_de_Pedido.DBEdit_Desconto4Exit(Sender: TObject);
begin
CalculaDesconto(Sender);
end;

procedure TFrm_Cadastro_de_Pedido.DBEdit_Desconto5Exit(Sender: TObject);
begin
CalculaDesconto(Sender);
end;

procedure TFrm_Cadastro_de_Pedido.DBEdit_Desconto6Exit(Sender: TObject);
begin
CalculaDesconto(Sender);
end;

procedure TFrm_Cadastro_de_Pedido.DBLookupCMB_FabricaExit(Sender: TObject);
begin
DM_Cadastro_de_Pedidos.FDQ_Produtos.Close;
DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('COD_FABRICA').AsInteger :=
  DM_Cadastro_de_Pedidos.FDQ_PedidoCODFABRICA.AsInteger;
DM_Cadastro_de_Pedidos.FDQ_Produtos.Open;
end;

procedure TFrm_Cadastro_de_Pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (DM_Cadastro_de_Pedidos.FDQ_Pedido.UpdatesPending) or (DM_Cadastro_de_Pedidos.FDQ_Itens.UpdatesPending) then
  begin
    if Application.MessageBox('Deseja encerrar?','Pergunta',MB_ICONQUESTION+MB_YESNO) = IdYes then
    begin
      //DM_Cadastro_de_Pedidos.FDQ_Itens.CancelUpdates;
      DM_Cadastro_de_Pedidos.FDQ_Pedido.Cancel;
      //DM_Cadastro_de_Pedidos.FDQ_Pedido.CancelUpdates;
      if DM_Cadastro_de_Pedidos.FDQ_Pedido.UpdatesPending then
      begin
        DM_Cadastro_de_Pedidos.FDQ_Itens.CancelUpdates;
        DM_Cadastro_de_Pedidos.FDQ_Pedido.Cancel;
        DM_Cadastro_de_Pedidos.FDQ_Pedido.CancelUpdates;
    end;
      Close;
    end else
      Abort;
  end;
end;

procedure TFrm_Cadastro_de_Pedido.FormShow(Sender: TObject);
begin
//DBComboBox_Tipo.ItemIndex := 0;
end;

end.
