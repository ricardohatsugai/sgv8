unit UFrm_PesqPorCliente_Fabrica_Datas_PesqVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Param;

type
  TFrm_PesqPorDataRepres_Fabrica_PesqVendedor = class(TForm)
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesqPorDataRepres_Fabrica_PesqVendedor: TFrm_PesqPorDataRepres_Fabrica_PesqVendedor;

implementation

{$R *.dfm}

uses UDM_PesqPedPorRepresentada_e_PorRepresentante;

procedure TFrm_PesqPorDataRepres_Fabrica_PesqVendedor.DBGrid1DblClick(
  Sender: TObject);
begin
DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.Active := False;
DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.ParamByName('COD_VEND').AsInteger :=
  DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_VendedorCODIGO.AsInteger;
DM_PesqPedPorRepresentada_e_PorRepresentante.FDQ_Pesquisa.Active := True;
Close;
end;

end.
