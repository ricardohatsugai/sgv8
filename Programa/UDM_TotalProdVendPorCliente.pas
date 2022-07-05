unit UDM_TotalProdVendPorCliente;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_TotalProdVendPorCliente = class(TDataModule)
    FDQ_Consulta: TFDQuery;
    FDQ_ConsultaRAZAOSOCIAL: TStringField;
    FDQ_ConsultaCODPRODUTO: TIntegerField;
    FDQ_ConsultaSUM_OF_QUANT: TBCDField;
    DS_Consulta: TDataSource;
    FDQ_Produto: TFDQuery;
    FDQ_ProdutoCODIGO: TIntegerField;
    FDQ_ProdutoREFERENCIA: TStringField;
    FDQ_ProdutoDESCRICAO: TStringField;
    DS_Produto: TDataSource;
    FDQ_ProdutoPesq: TFDQuery;
    FDQ_ProdutoPesqCODIGO: TIntegerField;
    FDQ_ProdutoPesqREFERENCIA: TStringField;
    FDQ_ProdutoPesqDESCRICAO: TStringField;
    DS_ProdutoPesq: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_TotalProdVendPorCliente: TDM_TotalProdVendPorCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
