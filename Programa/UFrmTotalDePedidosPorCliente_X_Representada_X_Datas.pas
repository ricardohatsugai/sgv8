unit UFrmTotalDePedidosPorCliente_X_Representada_X_Datas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, System.DateUtils, FireDAC.Stan.Param;

type
  TFrmTotalDePedidosPorCliente_X_Representada_X_Datas = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Lbl_Cliente: TLabel;
    Edt_Cliente: TEdit;
    SpeedButton_Cliente: TSpeedButton;
    Lbl_Representada: TLabel;
    Edit1: TEdit;
    SpeedButton_Representada: TSpeedButton;
    Lbl_Data_Inicial: TLabel;
    DateTimePicker1: TDateTimePicker;
    Lbl_Data_Final: TLabel;
    DateTimePicker2: TDateTimePicker;
    Btn_Pesquisar: TBitBtn;
    Label1: TLabel;
    Edt_Total_SIPI: TEdit;
    Label2: TLabel;
    Edt_Total_CIPI: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton_ClienteClick(Sender: TObject);
    procedure SpeedButton_RepresentadaClick(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTotalDePedidosPorCliente_X_Representada_X_Datas: TFrmTotalDePedidosPorCliente_X_Representada_X_Datas;

implementation

{$R *.dfm}

uses UDM_TotalDePedidosPorCliente_X_Representada_X_Datas,
  UFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli,
  UFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqFab,
  UDM_Cadastro_de_Pedidos, UFrm_Cadastro_de_Pedido, UDM_Principal;

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas.Btn_PesquisarClick(
  Sender: TObject);
  var total, total_cipi : Currency;
begin
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Active := False;
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.ParamByName('DT_INI').Value := DateTimePicker1.Date;
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.ParamByName('DT_FIM').Value := DateTimePicker2.Date;
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Active := True;

total := 0; total_cipi := 0;

DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.First;
while not DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Eof do
begin
  total := total + DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_PesquisaTOTAL.AsCurrency;
  total_cipi := total_cipi + DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_PesquisaTOTAL_CIPI.AsCurrency;
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Next;
end;
Edt_Total_SIPI.Text := FormatCurr('R$ ###,##0.0000', total);
Edt_Total_CIPI.Text := FormatCurr('R$ ###,##0.0000', total_cipi);
end;

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas.DBGrid1DblClick(
  Sender: TObject);
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

DM_Cadastro_de_Pedidos.FDQ_Produtos.ParamByName('COD_FABRICA').AsInteger :=
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_FabricasCODIGO.AsInteger;

  DM_Cadastro_de_Pedidos.FDQ_Produtos.Open;
  DM_Cadastro_de_Pedidos.FDQ_Pedido.ParamByName('CODIGO').AsInteger := DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_PesquisaCODIGO.AsInteger;
  DM_Cadastro_de_Pedidos.FDQ_Itens.ParamByName('CODIGO').AsInteger := DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_PesquisaCODIGO.AsInteger;
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

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas.FormShow(
  Sender: TObject);
begin
DateTimePicker1.Date := StartOfTheMonth(Now);
DateTimePicker2.Date := EndOfTheMonth(Now);
end;

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas.SpeedButton_ClienteClick(
  Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli, FrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli);
    FrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli.ShowModal;
  Finally
    FreeAndNil(FrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli);
  End;
end;

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas.SpeedButton_RepresentadaClick(
  Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab, FrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab);
    FrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab.ShowModal;
  Finally
    FreeAndNil(FrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab);
  End;
end;

end.
