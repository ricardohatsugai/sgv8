unit UDM_Login;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Login = class(TDataModule)
    FDQ_Usuarios: TFDQuery;
    DS_Usuarios: TDataSource;
    FDQ_UsuariosCODIGO: TIntegerField;
    FDQ_UsuariosNOME: TStringField;
    FDQ_UsuariosSENHA: TStringField;
    FDQ_UsuariosINCLUIR: TIntegerField;
    FDQ_UsuariosALTERAR: TIntegerField;
    FDQ_UsuariosEXCLUIR: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Login: TDM_Login;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
