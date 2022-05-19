unit UFrm_Pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrm_Pagamentos = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Lbl_Pagamento: TLabel;
    DBEdit_Pagamento: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pagamentos: TFrm_Pagamentos;

implementation

{$R *.dfm}

uses UDM_Pagamento;

end.
