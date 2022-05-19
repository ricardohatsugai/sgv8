unit UDM_PesqPorNumero;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Pesq_PedidosPorNumero = class(TDataModule)
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
    FDQ_PesquisaRAZAOSOCIAL_1: TStringField;
    FDQ_PesquisaNOME: TStringField;
    FDQ_PesquisaTOTAL: TBCDField;
    FDQ_PesquisaTOTAL_CIPI: TBCDField;
    DS_Pesquisa: TDataSource;
    FDQ_Pesq_OC: TFDQuery;
    FDQ_Pesq_OCCODIGO: TIntegerField;
    FDQ_Pesq_OCNUMERO: TStringField;
    FDQ_Pesq_OCOC: TStringField;
    FDQ_Pesq_OCDATA: TDateField;
    FDQ_Pesq_OCDATAPROGRAMA: TDateField;
    FDQ_Pesq_OCNOMEFANTASIA: TStringField;
    FDQ_Pesq_OCRAZAOSOCIAL: TStringField;
    FDQ_Pesq_OCCGC: TStringField;
    FDQ_Pesq_OCINSCRICAO: TStringField;
    FDQ_Pesq_OCRAZAOSOCIAL_1: TStringField;
    FDQ_Pesq_OCNOME: TStringField;
    FDQ_Pesq_OCTOTAL: TBCDField;
    FDQ_Pesq_OCTOTAL_CIPI: TBCDField;
    DS_Pesq_OC: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Pesq_PedidosPorNumero: TDM_Pesq_PedidosPorNumero;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
