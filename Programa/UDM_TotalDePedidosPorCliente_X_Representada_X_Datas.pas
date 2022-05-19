unit UDM_TotalDePedidosPorCliente_X_Representada_X_Datas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_TotalDePedidosPorCliente_X_Representada_X_Datas = class(TDataModule)
    FDQ_Pesquisa: TFDQuery;
    FDQ_PesquisaCODIGO: TIntegerField;
    FDQ_PesquisaNUMERO: TStringField;
    FDQ_PesquisaOC: TStringField;
    FDQ_PesquisaDATA: TDateField;
    FDQ_PesquisaDATAPROGRAMA: TDateField;
    FDQ_PesquisaNOMEFANTASIA: TStringField;
    FDQ_PesquisaRAZAOSOCIAL: TStringField;
    FDQ_PesquisaCGC: TStringField;
    FDQ_PesquisaINSCRICAO: TStringField;
    FDQ_PesquisaENDERECO: TStringField;
    FDQ_PesquisaBAIRRO: TStringField;
    FDQ_PesquisaNUMERO_1: TStringField;
    FDQ_PesquisaCIDADE: TStringField;
    FDQ_PesquisaESTADO: TStringField;
    FDQ_PesquisaCEP: TStringField;
    FDQ_PesquisaCONTATOS: TStringField;
    FDQ_PesquisaRAZAOSOCIAL_1: TStringField;
    FDQ_PesquisaTOTAL: TBCDField;
    FDQ_PesquisaTOTAL_CIPI: TBCDField;
    DS_Pesquisa: TDataSource;
    FDQ_Cliente: TFDQuery;
    FDQ_ClienteCODIGO: TIntegerField;
    FDQ_ClienteNOMEFANTASIA: TStringField;
    FDQ_ClienteRAZAOSOCIAL: TStringField;
    FDQ_ClienteCGC: TStringField;
    FDQ_ClienteINSCRICAO: TStringField;
    FDQ_ClienteENDERECO: TStringField;
    FDQ_ClienteBAIRRO: TStringField;
    FDQ_ClienteNUMERO: TStringField;
    FDQ_ClienteCIDADE: TStringField;
    FDQ_ClienteESTADO: TStringField;
    FDQ_ClienteCEP: TStringField;
    FDQ_ClienteCONTATOS: TStringField;
    DS_Cliente: TDataSource;
    FDQ_Fabricas: TFDQuery;
    FDQ_FabricasCODIGO: TIntegerField;
    FDQ_FabricasNOMEFANTASIA: TStringField;
    FDQ_FabricasRAZAOSOCIAL: TStringField;
    FDQ_FabricasCGC: TStringField;
    FDQ_FabricasINSCRICAO: TStringField;
    DS_Fabricas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_TotalDePedidosPorCliente_X_Representada_X_Datas: TDM_TotalDePedidosPorCliente_X_Representada_X_Datas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
