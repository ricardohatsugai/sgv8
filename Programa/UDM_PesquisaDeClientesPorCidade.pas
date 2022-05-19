unit UDM_PesquisaDeClientesPorCidade;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, frxExportPDF;

type
  TDM_PesquisaDeClientesPorCidade = class(TDataModule)
    FDQ_PesqClientesPorCidade: TFDQuery;
    FDQ_PesqClientesPorCidadeCODIGO: TIntegerField;
    FDQ_PesqClientesPorCidadeNOMEFANTASIA: TStringField;
    FDQ_PesqClientesPorCidadeRAZAOSOCIAL: TStringField;
    FDQ_PesqClientesPorCidadeCGC: TStringField;
    FDQ_PesqClientesPorCidadeINSCRICAO: TStringField;
    FDQ_PesqClientesPorCidadeENDERECO: TStringField;
    FDQ_PesqClientesPorCidadeBAIRRO: TStringField;
    FDQ_PesqClientesPorCidadeNUMERO: TStringField;
    FDQ_PesqClientesPorCidadeCIDADE: TStringField;
    FDQ_PesqClientesPorCidadeESTADO: TStringField;
    FDQ_PesqClientesPorCidadeCEP: TStringField;
    FDQ_PesqClientesPorCidadeCONTATOS: TStringField;
    FDQ_PesqClientesPorCidadeTELEFONE1: TStringField;
    FDQ_PesqClientesPorCidadeNOME: TStringField;
    DS_PesqClientesPorCidade: TDataSource;
    FDQ_PesqCidade: TFDQuery;
    FDQ_PesqCidadeCODIGO: TIntegerField;
    FDQ_PesqCidadeCIDADE: TStringField;
    FDQ_PesqCidadeESTADO: TStringField;
    DS_PesqCidade: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_PesquisaDeClientesPorCidade: TDM_PesquisaDeClientesPorCidade;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
