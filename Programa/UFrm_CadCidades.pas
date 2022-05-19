unit UFrm_CadCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, System.UITypes;

type
  TFrm_CadCidades = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Lbl_Pesquisa: TLabel;
    Edt_Pesquisa: TEdit;
    Btn_Pesquisar: TBitBtn;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Label2: TLabel;
    DBEdit_Cidade: TDBEdit;
    Label1: TLabel;
    DBLookupComboBox_Estado: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    procedure Btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadCidades: TFrm_CadCidades;

implementation

{$R *.dfm}

uses UDM_CadEstado_e_Estado;

procedure TFrm_CadCidades.Btn_PesquisarClick(Sender: TObject);
begin
if Edt_Pesquisa.Text <> '' then
begin
  if not DM_CadEstado_e_Cidade.FDQ_Cidade.Locate('CIDADE', Edt_Pesquisa.Text, [loPartialKey]) then
  begin
    if MessageDlg('Cidade não cadastrada! Quer incluir no cadastro?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      DM_CadEstado_e_Cidade.FDQ_Cidade.Insert;
      DBEdit_Cidade.SetFocus;
    end;

  end;
    //ShowMessage('Cidade não cadastrada!');

end;
end;

end.
