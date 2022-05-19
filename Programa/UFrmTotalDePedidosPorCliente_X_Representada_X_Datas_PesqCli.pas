unit UFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Param;

type
  TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Edt_Pesquisa: TEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli: TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli;

implementation

{$R *.dfm}

uses UDM_TotalDePedidosPorCliente_X_Representada_X_Datas,
  UFrmTotalDePedidosPorCliente_X_Representada_X_Datas;

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli.BitBtn1Click(
  Sender: TObject);
begin
if Edt_Pesquisa.Text <> '' then
begin
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Cliente.Active := False;
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Cliente.ParamByName('NOME').AsString := Edt_Pesquisa.Text + '%';
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Cliente.Active := True;
end;
Edt_Pesquisa.SetFocus;
end;

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli.DBGrid1DblClick(
  Sender: TObject);
begin
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Active := False;
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.ParamByName('COD_CLI').AsInteger :=
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_ClienteCODIGO.Value;
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Active := True;
FrmTotalDePedidosPorCliente_X_Representada_X_Datas.Edt_Cliente.Text :=
    DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_ClienteRAZAOSOCIAL.AsString;
Close;
end;

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqCli.FormShow(
  Sender: TObject);
begin
Edt_Pesquisa.SetFocus;
end;

end.
