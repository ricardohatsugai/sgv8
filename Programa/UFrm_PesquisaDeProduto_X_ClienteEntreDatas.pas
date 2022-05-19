unit UFrm_PesquisaDeProduto_X_ClienteEntreDatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Param, Vcl.ComCtrls, System.DateUtils;

type
  TFrm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edt_Pesquisa: TEdit;
    Btn_Pequisar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    DateTimePicker2: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure Btn_PequisarClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas: TFrm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas;

implementation

{$R *.dfm}

uses UDM_PesquisaDeProduto_X_ClienteQueComprou;

procedure TFrm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas.Btn_PequisarClick(
  Sender: TObject);
begin
DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Produto.Active := False;
DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Produto.ParamByName('REF').AsString := Edt_Pesquisa.Text + '%';
DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Produto.Active := True;
Edt_Pesquisa.SetFocus;
end;

procedure TFrm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas.DBGrid2DblClick(
  Sender: TObject);
begin
DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Pesq_Prod_X_Cliente.Active := False;
DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Pesq_Prod_X_Cliente.ParamByName('COD_PROD').AsInteger := DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_ProdutoCODIGO.Value;
DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Pesq_Prod_X_Cliente.ParamByName('DT_INI').AsDate := DateTimePicker1.Date;
DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Pesq_Prod_X_Cliente.ParamByName('DT_FIM').AsDate := DateTimePicker2.Date;
DM_PesquisaDeProduto_X_ClienteQueComprou.FDQ_Pesq_Prod_X_Cliente.Active := True;
Edt_Pesquisa.SetFocus;
end;

procedure TFrm_PesquisaDeProdutoVendido_X_PorClienteEntreDatas.FormShow(
  Sender: TObject);
begin
Edt_Pesquisa.SetFocus;
DateTimePicker1.Date := StartOfTheMonth(Now);
DateTimePicker2.Date := EndOfTheMonth(Now);
end;

end.
