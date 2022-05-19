unit UFrm_Cadastro_de_Transportes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrm_Cadastro_de_Transportes = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Lbl_NomeFantasia: TLabel;
    DBEditNomeFantasia: TDBEdit;
    Lbl_RazãoSocial: TLabel;
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
    SpeedButton_Cidade: TSpeedButton;
    Lbl_Estado: TLabel;
    DBLookupCMB_Estado: TDBLookupComboBox;
    SpeedButton_Estado: TSpeedButton;
    Lbl_Cep: TLabel;
    DBEdit_Cep: TDBEdit;
    Lbl_Contatos: TLabel;
    DBEdit_Contatos: TDBEdit;
    Lbl_Telefone: TLabel;
    DBEdit_Telefone: TDBEdit;
    Lbl_Fax: TLabel;
    DBEdit_Fax: TDBEdit;
    Lbl_Email: TLabel;
    DBEdit_Email: TDBEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    procedure DBLookupCMB_CidadeCloseUp(Sender: TObject);
    procedure SpeedButton_CidadeClick(Sender: TObject);
    procedure SpeedButton_EstadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_de_Transportes: TFrm_Cadastro_de_Transportes;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Transportes, UDM_CadEstado_e_Estado, UFrm_CadCidades,
  UFrm_CadEstado;

procedure TFrm_Cadastro_de_Transportes.DBLookupCMB_CidadeCloseUp(
  Sender: TObject);
begin
if DM_Cadastro_Transportes.FDQ_Cad_Transportes.State in [dsBrowse] then
  DM_Cadastro_Transportes.FDQ_Cad_Transportes.Edit;

  DM_Cadastro_Transportes.FDQ_Cad_TransportesCODESTADO.AsInteger :=
   DM_Cadastro_Transportes.FDQ_CidadeCODESTADO.AsInteger;
end;

procedure TFrm_Cadastro_de_Transportes.SpeedButton_CidadeClick(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_CadEstado_e_Cidade, DM_CadEstado_e_Cidade);
  Application.CreateForm(TFrm_CadCidades, Frm_CadCidades);
  DM_CadEstado_e_Cidade.FDQ_Estado.Active := True;
  DM_CadEstado_e_Cidade.FDQ_Cidade.Active := True;
  Frm_CadCidades.ShowModal;
  DM_CadEstado_e_Cidade.FDQ_Estado.Active := False;
  DM_CadEstado_e_Cidade.FDQ_Cidade.Active := False;
  DM_Cadastro_Transportes.FDQ_Cidade.Refresh;
Finally
  FreeAndNil(Frm_CadCidades);
  FreeAndNil(DM_CadEstado_e_Cidade);
End;
end;

procedure TFrm_Cadastro_de_Transportes.SpeedButton_EstadoClick(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_CadEstado_e_Cidade, DM_CadEstado_e_Cidade);
  Application.CreateForm(TFrm_CadEstado, Frm_CadEstado);
  DM_CadEstado_e_Cidade.FDQ_Estado.Active := True;
  Frm_CadEstado.ShowModal;
  DM_CadEstado_e_Cidade.FDQ_Estado.Active := False;
  DM_Cadastro_Transportes.FDQ_Estado.Refresh;
Finally
  FreeAndNil(DM_CadEstado_e_Cidade);
  FreeAndNil(Frm_CadEstado);
End;
end;

end.
