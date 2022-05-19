unit UFrm_CadEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_CadEstado = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Lbl_Estado: TLabel;
    DBEdit_Estado: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadEstado: TFrm_CadEstado;

implementation

{$R *.dfm}

uses UDM_CadEstado_e_Estado;

end.
