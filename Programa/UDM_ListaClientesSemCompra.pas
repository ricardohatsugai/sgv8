unit UDM_ListaClientesSemCompra;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_ListaClientesSemCompra = class(TDataModule)
    FDQ_ClientesSemCompra: TFDQuery;
    DS_ClientesSemCompra: TDataSource;
    FDQ_ClientesSemCompraCODIGO: TIntegerField;
    FDQ_ClientesSemCompraNOMEFANTASIA: TStringField;
    FDQ_ClientesSemCompraRAZAOSOCIAL: TStringField;
    FDQ_ClientesSemCompraCGC: TStringField;
    FDQ_ClientesSemCompraCONTATOS: TStringField;
    FDQ_ClientesSemCompraTELEFONE1: TStringField;
    FDQ_ClientesSemCompraEMAIL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_ListaClientesSemCompra: TDM_ListaClientesSemCompra;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
