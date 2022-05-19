unit UDM_PesquisaDeProduto_X_ClienteQueComprou;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_PesquisaDeProduto_X_ClienteQueComprou = class(TDataModule)
    FDQ_Pesq_Prod_X_Cliente: TFDQuery;
    FDQ_Pesq_Prod_X_ClienteCODIGO: TIntegerField;
    FDQ_Pesq_Prod_X_ClienteREFERENCIA: TStringField;
    FDQ_Pesq_Prod_X_ClienteDESCRICAO: TStringField;
    FDQ_Pesq_Prod_X_ClienteQUANT: TBCDField;
    FDQ_Pesq_Prod_X_ClientePRECO: TBCDField;
    FDQ_Pesq_Prod_X_ClienteIPI: TBCDField;
    FDQ_Pesq_Prod_X_ClienteTOTAL: TBCDField;
    FDQ_Pesq_Prod_X_ClienteDATA: TDateField;
    FDQ_Pesq_Prod_X_ClienteNOMEFANTASIA: TStringField;
    FDQ_Pesq_Prod_X_ClienteRAZAOSOCIAL: TStringField;
    DSPesq_Prod_X_Cliente: TDataSource;
    FDQ_Produto: TFDQuery;
    FDQ_ProdutoCODIGO: TIntegerField;
    FDQ_ProdutoCODFABRICANTE: TStringField;
    FDQ_ProdutoREFERENCIA: TStringField;
    FDQ_ProdutoDESCRICAO: TStringField;
    FDQ_ProdutoUNIDADE: TStringField;
    DS_Produtos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_PesquisaDeProduto_X_ClienteQueComprou: TDM_PesquisaDeProduto_X_ClienteQueComprou;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
