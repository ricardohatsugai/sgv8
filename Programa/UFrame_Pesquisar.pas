unit UFrame_Pesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmPesquisa = class(TFrame)
    Lbl_PesquisarPor: TLabel;
    CMB_PesquisarPor: TComboBox;
    Lbl_Pesquisa: TLabel;
    Edt_Pesquisa: TEdit;
    Btn_Pesquisar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
