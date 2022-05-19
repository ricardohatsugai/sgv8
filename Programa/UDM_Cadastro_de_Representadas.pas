unit UDM_Cadastro_de_Representadas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Representadas = class(TDataModule)
    FDQ_Lista_Representadas: TFDQuery;
    FDQ_Lista_RepresentadasCODIGO: TIntegerField;
    FDQ_Lista_RepresentadasNOMEFANTASIA: TStringField;
    FDQ_Lista_RepresentadasRAZAOSOCIAL: TStringField;
    FDQ_Lista_RepresentadasCGC: TStringField;
    FDQ_Lista_RepresentadasINSCRICAO: TStringField;
    DS_Lista_Representadas: TDataSource;
    FDQ_Lista_RepresentadasENDERECO: TStringField;
    FDQ_Lista_RepresentadasBAIRRO: TStringField;
    FDQ_Lista_RepresentadasNUMERO: TStringField;
    FDQ_Lista_RepresentadasCODCIDADE: TIntegerField;
    FDQ_Lista_RepresentadasCODESTADO: TIntegerField;
    FDQ_Lista_RepresentadasCEP: TStringField;
    FDQ_Lista_RepresentadasCONTATOS: TStringField;
    FDQ_Lista_RepresentadasTELEFONE: TStringField;
    FDQ_Lista_RepresentadasTELEFONE2: TStringField;
    FDQ_Lista_RepresentadasFAX: TStringField;
    FDQ_Lista_RepresentadasEMAIL: TStringField;
    FDQ_Lista_RepresentadasOBS: TMemoField;
    FDQ_Lista_RepresentadasCODDECIMAL: TIntegerField;
    FDQ_Cidades: TFDQuery;
    FDQ_CidadesCODIGO: TIntegerField;
    FDQ_CidadesCIDADE: TStringField;
    FDQ_CidadesCODESTADO: TIntegerField;
    FDQ_CidadesESTADO: TStringField;
    FDQ_Lista_RepresentadasCIDADE: TStringField;
    FDQ_Lista_RepresentadasESTADO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Representadas: TDM_Representadas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

end.
