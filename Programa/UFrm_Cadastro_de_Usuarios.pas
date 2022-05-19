unit UFrm_Cadastro_de_Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_Cadastro_de_Usuarios = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Lbl_Nome: TLabel;
    DBEdit_Nome: TDBEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupCMB_Incluir: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupCMB_Alterar: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupCMB_Excluir: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit_Senha: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_de_Usuarios: TFrm_Cadastro_de_Usuarios;

implementation

{$R *.dfm}

uses UDM_Principal;

end.
