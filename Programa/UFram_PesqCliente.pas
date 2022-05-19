unit UFram_PesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrame1 = class(TFrame)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Edit1: TEdit;
    Btn_Pesquisar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
