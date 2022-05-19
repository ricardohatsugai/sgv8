unit UFrm_PesqPedPorOC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Param;

type
  TFrm_PesqPedPorOC = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edt_Pesquisa: TEdit;
    BitBtn1: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesqPedPorOC: TFrm_PesqPedPorOC;

implementation

{$R *.dfm}

uses UDM_PesqPorNumero, UDM_Cadastro_de_Pedidos, UDM_Principal,
  UFrm_Cadastro_de_Pedido;

procedure TFrm_PesqPedPorOC.BitBtn1Click(Sender: TObject);
begin
if Edt_Pesquisa.Text <> '' then
begin
  DM_Pesq_PedidosPorNumero.FDQ_Pesq_OC.Active := False;
  DM_Pesq_PedidosPorNumero.FDQ_Pesq_OC.ParamByName('OC').AsString := Edt_Pesquisa.Text + '%';
  DM_Pesq_PedidosPorNumero.FDQ_Pesq_OC.Active := True;
end;
Edt_Pesquisa.SetFocus;
end;

procedure TFrm_PesqPedPorOC.DBGrid1DblClick(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Cadastro_de_Pedidos, DM_Cadastro_de_Pedidos);
  Application.CreateForm(TFrm_Cadastro_de_Pedido, Frm_Cadastro_de_Pedido);
  DM_Cadastro_de_Pedidos.FDQ_Cliente.Open;
  DM_Cadastro_de_Pedidos.FDQ_Fabrica.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pagamento.Open;
  DM_Cadastro_de_Pedidos.FDQ_Transporte.Open;
  DM_Cadastro_de_Pedidos.FDQ_Vendedor.Open;
  DM_Cadastro_de_Pedidos.FDQ_Frete.Open;

DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('COD_FABRICA').AsInteger := DM_Pesq_PedidosPorNumero.FDQ_Pesq_OCCODIGO.AsInteger;

  DM_Cadastro_de_Pedidos.FDQ_Produtos.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.ParamByName('CODIGO').AsInteger := DM_Pesq_PedidosPorNumero.FDQ_Pesq_OCCODIGO.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_Itens.ParamByName('CODIGO').AsInteger := DM_Pesq_PedidosPorNumero.FDQ_Pesq_OCCODIGO.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Open;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Open;
  DM_Principal.FDConnection1.StartTransaction;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.Edit;
  //DM_Cadastro_de_Pedidos.FDQ_PedidoTIPO.Value := 'PEDIDO';
  //DM_Cadastro_de_Pedidos.FDQ_PedidoDATA.AsDateTime := Date;

  Frm_Cadastro_de_Pedido.ShowModal;

  if DM_Cadastro_de_Pedidos.FDQ_Pedido.State in [dsInsert, dsEdit] then
  begin
    DM_Cadastro_de_Pedidos.FDQ_Pedido.Cancel;
    DM_Cadastro_de_Pedidos.FDQ_Pedido.CancelUpdates;
  end;

  DM_Cadastro_de_Pedidos.FDQ_Pedido.Close;
  DM_Cadastro_de_Pedidos.FDQ_Itens.Close;
  DM_Cadastro_de_Pedidos.FDQ_Cliente.Close;
  DM_Cadastro_de_Pedidos.FDQ_Fabrica.Close;
  DM_Cadastro_de_Pedidos.FDQ_Pagamento.Close;
  DM_Cadastro_de_Pedidos.FDQ_Transporte.Close;
  DM_Cadastro_de_Pedidos.FDQ_Vendedor.Close;
  DM_Cadastro_de_Pedidos.FDQ_Frete.Close;
  DM_Cadastro_de_Pedidos.FDQ_Produtos.Close;

Finally
  FreeAndNil(Frm_Cadastro_de_Pedido);
  FreeAndNil(DM_Cadastro_de_Pedidos);
End;
end;

end.
