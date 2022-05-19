unit UFrm_Lista_de_Representadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_Lista_Representadas = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Lbl_NomeFantasia: TLabel;
    DBEdit_NomeFantasia: TDBEdit;
    Lbl_RazaoSocial: TLabel;
    DBEdit_RazaoSocial: TDBEdit;
    Lbl_CGC: TLabel;
    DBEdit_CGC: TDBEdit;
    Lbl_InscricaoEstadual: TLabel;
    DBEdit_InscricaoEstadual: TDBEdit;
    Lbl_Endereco: TLabel;
    DBEdit_Endereco: TDBEdit;
    Lbl_Bairro: TLabel;
    DBEdit_Bairro: TDBEdit;
    Lbl_Numero: TLabel;
    DBEdit_Numero: TDBEdit;
    Lbl_Cidade: TLabel;
    DBLookupCMB_Cidade: TDBLookupComboBox;
    Lbl_Estado: TLabel;
    DBEdit_Estado: TDBEdit;
    Lbl_Cep: TLabel;
    DBEdit_Cep: TDBEdit;
    Lbl_Contatos: TLabel;
    DBEdit_Contatos: TDBEdit;
    Lbl_Telefones1: TLabel;
    DBEdit_Telefones: TDBEdit;
    Lbl_Telefones2: TLabel;
    DBEdit_Telefones2: TDBEdit;
    Lbl_Fax: TLabel;
    DBEdit_Fax: TDBEdit;
    Lbl_Email: TLabel;
    DBEdit_Email: TDBEdit;
    Lbl_CodDecimal: TLabel;
    DBEdit_CodDecimal: TDBEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    procedure DBLookupCMB_CidadeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Lista_Representadas: TFrm_Lista_Representadas;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Representadas;

procedure TFrm_Lista_Representadas.DBLookupCMB_CidadeExit(Sender: TObject);
begin
if DM_Representadas.FDQ_Lista_Representadas.State in [dsEdit, dsInsert] then
  DM_Representadas.FDQ_Lista_RepresentadasCODESTADO.Value :=
    DM_Representadas.FDQ_CidadesCODESTADO.AsInteger;
end;

end.
