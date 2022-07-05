unit UFrm_PesquisaSomaProdutosVendidosPorCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, FireDAC.Stan.Param;

type
  TFrm_PesquisaSomaProdutosVendidosPorCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    Edit1: TEdit;
    Spd_ConsultaProduto: TSpeedButton;
    Btn_Pesquisar: TBitBtn;
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure Spd_ConsultaProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesquisaSomaProdutosVendidosPorCliente: TFrm_PesquisaSomaProdutosVendidosPorCliente;

implementation

{$R *.dfm}

uses UDM_TotalProdVendPorCliente,
  UFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd;

procedure TFrm_PesquisaSomaProdutosVendidosPorCliente.Btn_PesquisarClick(
  Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    DM_TotalProdVendPorCliente.FDQ_Consulta.Active := False;
    DM_TotalProdVendPorCliente.FDQ_Consulta.Params[0].AsDate := DateTimePicker1.Date;
    DM_TotalProdVendPorCliente.FDQ_Consulta.Params[1].AsDate := DateTimePicker2.Date;
    DM_TotalProdVendPorCliente.FDQ_Consulta.Active := True;
  end else
  begin
    ShowMessage('Você deve selecionar um produto!');
    Edit1.SetFocus;
  end;
end;

procedure TFrm_PesquisaSomaProdutosVendidosPorCliente.Spd_ConsultaProdutoClick(
  Sender: TObject);
begin
Try
  Application.CreateForm(TFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd, Frm_PesquisaSomaProdutosVendidosPorCliente_PesqProd);
  Frm_PesquisaSomaProdutosVendidosPorCliente_PesqProd.ShowModal;
  Edit1.Text := DM_TotalProdVendPorCliente.FDQ_ProdutoPesqREFERENCIA.AsString;

finally
  FreeAndNil(Frm_PesquisaSomaProdutosVendidosPorCliente_PesqProd);
end;
end;

end.
