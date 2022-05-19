unit UFrm_Alteracao_Cadastro_de_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrm_Cadastro_de_Clientes, Vcl.ExtDlgs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrm_Alteracao_de_Cadastro_de_Clientes = class(TFrm_Cadastro_de_Clientes)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Alteracao_de_Cadastro_de_Clientes: TFrm_Alteracao_de_Cadastro_de_Clientes;

implementation

{$R *.dfm}

end.
