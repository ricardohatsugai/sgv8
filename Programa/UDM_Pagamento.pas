unit UDM_Pagamento;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Pagamentos = class(TDataModule)
    FDQ_Pagamento: TFDQuery;
    FDQ_PagamentoCODIGO: TIntegerField;
    FDQ_PagamentoPAGAMENTO: TStringField;
    DS_Pagamentos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Pagamentos: TDM_Pagamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
