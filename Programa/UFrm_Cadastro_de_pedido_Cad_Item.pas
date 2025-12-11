unit UFrm_Cadastro_de_pedido_Cad_Item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Param;

type
  TFrm_Cadastro_de_Pedido_Cad_Item = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Lbl_cod_Produto: TLabel;
    DBEdit_Cod_Produto: TDBEdit;
    lbl_Referencia: TLabel;
    DBEdit_Referencia: TDBEdit;
    Lbl_Descricao: TLabel;
    DBEdit_Descricao: TDBEdit;
    Lbl_Item: TLabel;
    DBEdit_Item: TDBEdit;
    Lbl_Unidade: TLabel;
    DBEdit_Unidade: TDBEdit;
    Lbl_Quantidade: TLabel;
    DBEdit_Quantidade: TDBEdit;
    Lbl_Preco: TLabel;
    DBEdit_Preco: TDBEdit;
    Lbl_IPI: TLabel;
    DBEdit_Ipi: TDBEdit;
    Lbl_Total_S_IPI: TLabel;
    DBEdit_Total_S_IPI: TDBEdit;
    Lbl_Total_C_IPI: TLabel;
    DBEdit_Total_C_IPI: TDBEdit;
    Lbl_Desc1: TLabel;
    DBEdit_Desconto1: TDBEdit;
    Lbl_Desc2: TLabel;
    DBEdit_Desc2: TDBEdit;
    Lbl_Desc3: TLabel;
    DBEdit_Desc3: TDBEdit;
    Lbl_Desc4: TLabel;
    DBEdit_Desc4: TDBEdit;
    Lbl_Desc5: TLabel;
    DBEdit_Desc5: TDBEdit;
    Lbl_Desc6: TLabel;
    DBEdit_Desc6: TDBEdit;
    Lbl_Coificiente: TLabel;
    DBEdit_Coificiente: TDBEdit;
    Panel3: TPanel;
    Bevel1: TBevel;
    Lbl_Pesquisa: TLabel;
    Edit_Pesquisa: TEdit;
    Btn_Pesquisar: TBitBtn;
    Btn_Incluir: TBitBtn;
    Lbl_precoUnitarioC_IPI: TLabel;
    Edit_ValorCIPI: TEdit;
    Label1: TLabel;
    DBEdit_CodDoCliente: TDBEdit;
    Label2: TLabel;
    DBEdit_PrecoFixo: TDBEdit;
    procedure DBEdit_Desconto1Exit(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure DBEdit_QuantidadeExit(Sender: TObject);
    procedure DBEdit_PrecoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure calculaDesconto(
  Sender: TObject);
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_de_Pedido_Cad_Item: TFrm_Cadastro_de_Pedido_Cad_Item;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Pedidos, UDM_Principal, UFrm_Cadastro_de_Pedido;

procedure TFrm_Cadastro_de_Pedido_Cad_Item.Btn_IncluirClick(Sender: TObject);
begin
{Se o campo DBEDit_CodDoCliente não estiver vazio, e o não tiver registro na
  tabela, o código do cliente será gravado}
if DBEdit_CodDoCliente.Text <> '' then
begin
  if DM_Cadastro_de_Pedidos.FDQ_CodDoClienteCOD_DO_CLIENTE.IsNull then
  begin
    DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Edit;
    DM_Cadastro_de_Pedidos.FDQ_CodDoClienteCOD_DO_CLIENTE.AsString:=
      DBEdit_CodDoCliente.Text;
    DM_Cadastro_de_Pedidos.FDQ_CodDoClienteCOD_CLIENTE.Value:=
      DM_Cadastro_de_Pedidos.FDQ_PedidoCODCLIENTE.AsInteger;
    DM_Cadastro_de_Pedidos.FDQ_CodDoClienteCOD_PRODUTO.Value:=
      DM_Cadastro_de_Pedidos.FDQ_ItensCODPRODUTO.AsInteger;
    DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Post;
    DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.ApplyUpdates(-1);
    DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.CommitUpdates;
  end;
end;

DM_Cadastro_de_Pedidos.FDQ_Itens.Post;
Close;
end;

procedure TFrm_Cadastro_de_Pedido_Cad_Item.Btn_PesquisarClick(Sender: TObject);
begin
DM_Cadastro_de_Pedidos.FDQ_Produtos.Active := False;
DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('REF').AsString := '%'+Edit_Pesquisa.Text+'%';
DM_Cadastro_de_Pedidos.FDQ_Produtos.Active := True;
Edit_Pesquisa.SetFocus;
end;

procedure TFrm_Cadastro_de_Pedido_Cad_Item.calculaDesconto(Sender: TObject);
begin
if DBEdit_Desconto1.Text <> '' then
  DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency := (100 - DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO1.AsCurrency)/100;

  if DBEdit_Desc2.Text <> '' then
    DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency -
      ((DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO2.AsCurrency)/100));

    if DBEdit_Desc3.Text <> '' then
      DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency -
        ((DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO3.AsCurrency)/100));

      if DBEdit_Desc4.Text <> '' then
        DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency -
          ((DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO4.AsCurrency)/100));

        if DBEdit_Desc5.Text <> '' then
          DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency -
            ((DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO5.AsCurrency)/100));

          if DBEdit_Desc6.Text <> '' then
            DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency := (DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency -
              ((DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency * DM_Cadastro_de_Pedidos.FDQ_ItensDESCONTO6.AsCurrency)/100));

end;

procedure TFrm_Cadastro_de_Pedido_Cad_Item.DBEdit_Desconto1Exit(
  Sender: TObject);
begin
calculaDesconto(Sender);
end;

procedure TFrm_Cadastro_de_Pedido_Cad_Item.DBEdit_PrecoExit(Sender: TObject);
  var i : Integer; // variável para aplicar a função MOD. Que é para não deixar o usuário digitar uma quantidade fora da embalágem.
begin
if DBEdit_Quantidade.Text <> '' then
begin
  // Faz a divisão da quantidade digitada com a quantidade de embalágem do produto.
  i := (DM_Cadastro_de_Pedidos.FDQ_ItensQUANT.AsInteger) mod (DM_Cadastro_de_Pedidos.FDQ_ProdutosEMBAL_MULTIPLO.AsInteger);
  if i <> 0 then // Se o resto da divisão for diferente de 0, então é exibida a mensagem ao usuário de que ele precisa digiar a embalágem correta.
  begin
    ShowMessage('A embalágem deste produto é com '+ DM_Cadastro_de_Pedidos.FDQ_ProdutosEMBAL_MULTIPLO.AsString + ' peças.');
    DBEdit_Quantidade.SetFocus;
  end;

end;
DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.Value := DM_Cadastro_de_Pedidos.FDQ_ItensQUANT.AsCurrency *
    DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.AsCurrency;

  DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.Value := DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency +
    (DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency * (DM_Cadastro_de_Pedidos.FDQ_ItensIPI.AsCurrency / 100));


Btn_Incluir.SetFocus;
end;

procedure TFrm_Cadastro_de_Pedido_Cad_Item.DBEdit_QuantidadeExit(
  Sender: TObject);
  var i : Integer; // variável para aplicar a função MOD. Que é para não deixar o usuário digitar uma quantidade fora da embalágem.
begin
if DBEdit_Quantidade.Text <> '' then
begin
  // Faz a divisão da quantidade digitada com a quantidade de embalágem do produto.
  i := (DM_Cadastro_de_Pedidos.FDQ_ItensQUANT.AsInteger) mod (DM_Cadastro_de_Pedidos.FDQ_ProdutosEMBAL_MULTIPLO.AsInteger);
  if i <> 0 then // Se o resto da divisão for diferente de 0, então é exibida a mensagem ao usuário de que ele precisa digiar a embalágem correta.
  begin
    ShowMessage('A embalágem deste produto é com '+ DM_Cadastro_de_Pedidos.FDQ_ProdutosEMBAL_MULTIPLO.AsString + ' peças.');
    DBEdit_Quantidade.SetFocus;
  end;

end;
DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.Value := DM_Cadastro_de_Pedidos.FDQ_ItensQUANT.AsCurrency *
    DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.AsCurrency;

  DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL_CIPI.Value := DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency +
    (DM_Cadastro_de_Pedidos.FDQ_ItensTOTAL.AsCurrency * (DM_Cadastro_de_Pedidos.FDQ_ItensIPI.AsCurrency / 100));

end;

procedure TFrm_Cadastro_de_Pedido_Cad_Item.DBGrid1DblClick(Sender: TObject);
begin
DM_Cadastro_de_Pedidos.FDQ_ItensCODPRODUTO.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosCODIGO.Value;
DM_Cadastro_de_Pedidos.FDQ_ItensREFERENCIA.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosREFERENCIA.Value;
DM_Cadastro_de_Pedidos.FDQ_ItensDESCRICAO.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosDESCRICAO.Value;
DM_Cadastro_de_Pedidos.FDQ_ItensUNIDADE.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosUNIDADE.Value;
if DM_Cadastro_de_Pedidos.FDQ_ProdutosPRECOFIXO.Value = 2 then begin // 1 = SIM, 2 = NAO
  DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosPRECO.AsCurrency
    * DM_Cadastro_de_Pedidos.FDQ_ItensCOIFICIENTE.AsCurrency;
end else if DM_Cadastro_de_Pedidos.FDQ_ProdutosPRECOFIXO.Value = 1 then begin
  DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosPRECO.AsCurrency;
end;
DM_Cadastro_de_Pedidos.FDQ_ItensIPI.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosIPI.AsCurrency;
DM_Cadastro_de_Pedidos.FDQ_ItensCOD_BARRA.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosCODBARRA.Value;
DM_Cadastro_de_Pedidos.FDQ_ItensCLASS_FISCAL.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosCLASSFISCAL.Value;
DM_Cadastro_de_Pedidos.FDQ_ItensICMS.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosICMS.AsCurrency;
DM_Cadastro_de_Pedidos.FDQ_ItensCTS.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosCTS.Value;
Edit_ValorCIPI.Text := FormatCurr('R$ ###,##0.00', DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.AsCurrency +
  (DM_Cadastro_de_Pedidos.FDQ_ItensPRECO.AsCurrency * (DM_Cadastro_de_Pedidos.FDQ_ItensIPI.AsCurrency / 100)));
DM_Cadastro_de_Pedidos.FDQ_ItensQUANT.Value := DM_Cadastro_de_Pedidos.FDQ_ProdutosEMBAL_MULTIPLO.Value;

  {Passa o código do produto para o parametro ('CODPROD') da tabela COD_PRODCLIENTE}
if DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active = True then
  DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active:=False;

DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.ParamByName('CODPROD').Value:=
  DM_Cadastro_de_Pedidos.FDQ_ProdutosCODIGO.AsInteger;
// Abre a tabela
DM_Cadastro_de_Pedidos.FDQ_CodDoCliente.Active:=True;
// Se a o registro não tiver um código do Cliente já cadastrado ele não passa
// nada para o DBEdti_CodDoCliente.
// Se sim, ele automaticamente já passa o código.
if not DM_Cadastro_de_Pedidos.FDQ_CodDoClienteCOD_DO_CLIENTE.IsNull then
  DBEdit_CodDoCliente.Text:=DM_Cadastro_de_Pedidos.FDQ_CodDoClienteCOD_DO_CLIENTE.AsString;


DBEdit_Quantidade.SetFocus;
end;

procedure TFrm_Cadastro_de_Pedido_Cad_Item.FormShow(Sender: TObject);
begin
Edit_Pesquisa.SetFocus;
end;

end.
