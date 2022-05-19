unit UFrm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_Login = class(TForm)
    Lbl_Cabecalho: TLabel;
    Lbl_Usuario: TLabel;
    Edt_Usuario: TEdit;
    Lbl_Senha: TLabel;
    Edt_Senha: TEdit;
    Btn_Login: TBitBtn;
    procedure Btn_LoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Chave : Boolean;
  public
    { Public declarations }
  end;

var
  Frm_Login: TFrm_Login;

implementation

{$R *.dfm}

uses UDM_Login, UDM_Principal, UFrm_Principal;

procedure TFrm_Login.Btn_LoginClick(Sender: TObject);
begin
if (Edt_Usuario.Text = '') or (Edt_Senha.Text = '') then
begin
  ShowMessage('Usuário e senha inválidos!');
  Edt_Usuario.SetFocus;
end else
  begin
    if not DM_Login.FDQ_Usuarios.Locate('NOME', Edt_Usuario.Text, []) then
    begin
      ShowMessage('Usuário e senha inválidos!');
      Edt_Usuario.SetFocus;
    end else
      begin
        if DM_Login.FDQ_UsuariosSENHA.AsString <> Edt_Senha.Text then
        begin
          ShowMessage('Usuário e senha inválidos!');
          Edt_Usuario.SetFocus;
        end else
          begin
            Chave:=True;
            ModalResult:=-1;
          end;
      end;
  end;
end;

procedure TFrm_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Chave = False then
    Application.Terminate;
end;

procedure TFrm_Login.FormShow(Sender: TObject);
begin
  Chave:=False;
end;

end.
