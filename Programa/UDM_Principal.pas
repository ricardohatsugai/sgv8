unit UDM_Principal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB,
  FireDAC.VCLUI.Login, FireDAC.Phys.IBBase, FireDAC.Comp.UI, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM_Principal = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDT_Usuarios: TFDTable;
    FDT_UsuariosCODIGO: TIntegerField;
    FDT_UsuariosNOME: TStringField;
    FDT_UsuariosSENHA: TStringField;
    FDT_UsuariosINCLUIR: TIntegerField;
    FDT_UsuariosALTERAR: TIntegerField;
    FDT_UsuariosEXCLUIR: TIntegerField;
    DS_Usuarios: TDataSource;
    FDT_SimNao: TFDTable;
    FDT_SimNaoCODIGO: TIntegerField;
    FDT_SimNaoSIM_NAO: TStringField;
    FDT_UsuariosINCLUIR_LOOKUP: TStringField;
    FDT_UsuariosALTERAR_LOOKUP: TStringField;
    FDT_UsuariosEXCLUIR_LOOKUP: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Principal: TDM_Principal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
