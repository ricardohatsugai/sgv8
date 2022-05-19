unit UFrm_Cadastro_de_Vendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_Cadastro_de_Vendedores = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Lbl_Codigo: TLabel;
    DBEdit_codigo: TDBEdit;
    Lbl_Nome: TLabel;
    DBEdit_Nome: TDBEdit;
    Lbl_Identidade: TLabel;
    DBEdit_Identidade: TDBEdit;
    Lbl_Cpf: TLabel;
    DBEdit_Cpf: TDBEdit;
    Lbl_Endereco: TLabel;
    DBEdit_Endereco: TDBEdit;
    Lbl_Bairro: TLabel;
    DBEdit_Bairro: TDBEdit;
    Lbl_Numero: TLabel;
    DBEdit_Numero: TDBEdit;
    Lbl_Cidade: TLabel;
    DBLookupCMB_Cidade: TDBLookupComboBox;
    Lbl_Estado: TLabel;
    DBLookupCMB_Estado: TDBLookupComboBox;
    Lbl_Cep: TLabel;
    DBEdit_Cep: TDBEdit;
    Lbl_Celular: TLabel;
    DBEdit_Celular: TDBEdit;
    Lbl_Telefone: TLabel;
    DBEdit_Telefone: TDBEdit;
    Lbl_Fax: TLabel;
    DBEdit_fax: TDBEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_de_Vendedores: TFrm_Cadastro_de_Vendedores;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Vendedores;

end.
