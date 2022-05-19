unit UDM_ListagemDeClientes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_ListagemDeClientes = class(TDataModule)
    FDQ_ListaClientes: TFDQuery;
    DS_ListaClientes: TDataSource;
    FDQ_CidadesEstado: TFDQuery;
    FDQ_CidadesEstadoCODIGO: TIntegerField;
    FDQ_CidadesEstadoCIDADE: TStringField;
    FDQ_CidadesEstadoESTADO: TStringField;
    FDQ_ListaClientesCODIGO: TIntegerField;
    FDQ_ListaClientesNOMEFANTASIA: TStringField;
    FDQ_ListaClientesRAZAOSOCIAL: TStringField;
    FDQ_ListaClientesCGC: TStringField;
    FDQ_ListaClientesINSCRICAO: TStringField;
    FDQ_ListaClientesENDERECO: TStringField;
    FDQ_ListaClientesBAIRRO: TStringField;
    FDQ_ListaClientesNUMERO: TStringField;
    FDQ_ListaClientesCODCIDADE: TIntegerField;
    FDQ_ListaClientesCIDADE: TStringField;
    FDQ_ListaClientesESTADO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_ListagemDeClientes: TDM_ListagemDeClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
