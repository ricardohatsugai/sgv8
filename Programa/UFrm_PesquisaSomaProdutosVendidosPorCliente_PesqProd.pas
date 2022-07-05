unit UFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Param;

type
  TFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Btn_Pesquisar: TBitBtn;
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesquisaSomaProdutosVendidosPorCliente_PesqProd: TFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd;

implementation

{$R *.dfm}

uses UDM_TotalProdVendPorCliente;

procedure TFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd.Btn_PesquisarClick(
  Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    DM_TotalProdVendPorCliente.FDQ_ProdutoPesq.Active := False;
    DM_TotalProdVendPorCliente.FDQ_ProdutoPesq.Params[0].AsString := Edit1.Text + '%';
    DM_TotalProdVendPorCliente.FDQ_ProdutoPesq.Active := True;
  end else
    ShowMessage('O campo referência de produto não pode ser nulo!');
end;

procedure TFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd.DBGrid1CellClick(
  Column: TColumn);
begin
  DM_TotalProdVendPorCliente.FDQ_Consulta.Active := False;
  DM_TotalProdVendPorCliente.FDQ_Consulta.Params[2].AsInteger := DM_TotalProdVendPorCliente.FDQ_ProdutoPesqCODIGO.AsInteger;
  DM_TotalProdVendPorCliente.FDQ_Consulta.Active := True;
  ModalResult := -1;
end;

end.
