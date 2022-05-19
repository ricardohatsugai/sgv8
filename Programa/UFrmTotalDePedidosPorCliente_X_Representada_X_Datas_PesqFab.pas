unit UFrmTotalDePedidosPorCliente_X_Representada_X_Datas_PesqFab;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Param;

type
  TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab = class(TForm)
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab: TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab;

implementation

{$R *.dfm}

uses UDM_TotalDePedidosPorCliente_X_Representada_X_Datas,
  UFrmTotalDePedidosPorCliente_X_Representada_X_Datas;

procedure TFrmTotalDePedidosPorCliente_X_Representada_X_Datas_Pesq_Fab.DBGrid1DblClick(
  Sender: TObject);
begin
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Active := False;
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.ParamByName('COD_FAB').Value :=
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_FabricasCODIGO.AsInteger;
DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_Pesquisa.Active := True;
FrmTotalDePedidosPorCliente_X_Representada_X_Datas.Edit1.Text :=
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas.FDQ_FabricasRAZAOSOCIAL.AsString;
Close;
end;

end.
