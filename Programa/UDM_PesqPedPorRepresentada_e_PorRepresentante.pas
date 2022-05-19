unit UDM_PesqPedPorRepresentada_e_PorRepresentante;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_PesqPedPorRepresentada_e_PorRepresentante = class(TDataModule)
    FDQ_Pesquisa: TFDQuery;
    DS_Pesquisa: TDataSource;
    FDQ_Vendedor: TFDQuery;
    DS_Vendedor: TDataSource;
    FDQ_Fabrica: TFDQuery;
    FDQ_FabricaCODIGO: TIntegerField;
    FDQ_FabricaRAZAOSOCIAL: TStringField;
    DS_Fabrica: TDataSource;
    FDQ_VendedorCODIGO: TIntegerField;
    FDQ_VendedorNOME: TStringField;
    FDQ_PesquisaCODIGO: TIntegerField;
    FDQ_PesquisaNUMERO: TStringField;
    FDQ_PesquisaOC: TStringField;
    FDQ_PesquisaDATA: TDateField;
    FDQ_PesquisaDATAPROGRAMA: TDateField;
    FDQ_PesquisaNOMEFANTASIA: TStringField;
    FDQ_PesquisaRAZAOSOCIAL: TStringField;
    FDQ_PesquisaRAZAOSOCIAL_1: TStringField;
    FDQ_PesquisaNOME: TStringField;
    FDQ_PesquisaTOTAL: TBCDField;
    FDQ_PesquisaTOTAL_CIPI: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_PesqPedPorRepresentada_e_PorRepresentante: TDM_PesqPedPorRepresentada_e_PorRepresentante;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
