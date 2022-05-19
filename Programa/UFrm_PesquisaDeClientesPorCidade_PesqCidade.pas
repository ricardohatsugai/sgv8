unit UFrm_PesquisaDeClientesPorCidade_PesqCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Param;

type
  TFrm_PesquisaDeClientesPorCidade_PesqCidade = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Btn_Pesquisar: TBitBtn;
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesquisaDeClientesPorCidade_PesqCidade: TFrm_PesquisaDeClientesPorCidade_PesqCidade;

implementation

{$R *.dfm}

uses UDM_PesquisaDeClientesPorCidade, UFrm_PesquisaDeClientesPorCidade;

procedure TFrm_PesquisaDeClientesPorCidade_PesqCidade.Btn_PesquisarClick(
  Sender: TObject);
begin
if Edit1.Text <> '' then
begin
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidade.Active := False;
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidade.ParamByName('CIDADE').AsString := Edit1.Text + '%';
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidade.Active := True;
end;
Edit1.SetFocus;
end;

procedure TFrm_PesquisaDeClientesPorCidade_PesqCidade.DBGrid1DblClick(
  Sender: TObject);
begin
DM_PesquisaDeClientesPorCidade.FDQ_PesqClientesPorCidade.Active := False;
DM_PesquisaDeClientesPorCidade.FDQ_PesqClientesPorCidade.ParamByName('COD_CID').AsInteger :=
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidadeCODIGO.Value;
DM_PesquisaDeClientesPorCidade.FDQ_PesqClientesPorCidade.Active := True;
Frm_PesquisaDeClientesPorCidade.Edit1.Text := DM_PesquisaDeClientesPorCidade.FDQ_PesqCidadeCIDADE.AsString + ' - ' +
  DM_PesquisaDeClientesPorCidade.FDQ_PesqCidadeESTADO.AsString;
Close;
end;

procedure TFrm_PesquisaDeClientesPorCidade_PesqCidade.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.
