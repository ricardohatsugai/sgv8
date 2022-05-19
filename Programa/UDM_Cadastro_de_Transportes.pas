unit UDM_Cadastro_de_Transportes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Cadastro_Transportes = class(TDataModule)
    FDQ_Cad_Transportes: TFDQuery;
    FDQ_Cad_TransportesCODIGO: TIntegerField;
    FDQ_Cad_TransportesNOMEFANTASIA: TStringField;
    FDQ_Cad_TransportesRAZAOSOCIAL: TStringField;
    FDQ_Cad_TransportesCGC: TStringField;
    FDQ_Cad_TransportesINSCRICAO: TStringField;
    FDQ_Cad_TransportesENDERECO: TStringField;
    FDQ_Cad_TransportesBAIRRO: TStringField;
    FDQ_Cad_TransportesNUMERO: TStringField;
    FDQ_Cad_TransportesCODCIDADE: TIntegerField;
    FDQ_Cad_TransportesCODESTADO: TIntegerField;
    FDQ_Cad_TransportesCEP: TStringField;
    FDQ_Cad_TransportesCONTATOS: TStringField;
    FDQ_Cad_TransportesTELEFONE: TStringField;
    FDQ_Cad_TransportesFAX: TStringField;
    FDQ_Cad_TransportesEMAIL: TStringField;
    FDQ_Cad_TransportesOBS: TMemoField;
    FDQ_Cidade: TFDQuery;
    FDQ_CidadeCODIGO: TIntegerField;
    FDQ_CidadeCIDADE: TStringField;
    FDQ_CidadeCODESTADO: TIntegerField;
    FDQ_Cad_TransportesCIDADE_LOOKUP: TStringField;
    FDQ_Estado: TFDQuery;
    FDQ_EstadoCODIGO: TIntegerField;
    FDQ_EstadoESTADO: TStringField;
    FDQ_CidadeESTADO_LOOKUP: TStringField;
    FDQ_Cad_TransportesESTADO_LOOKUP: TStringField;
    DS_Cad_Transportes: TDataSource;
    procedure FDQ_Cad_TransportesAfterPost(DataSet: TDataSet);
    procedure FDQ_Cad_TransportesAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Cadastro_Transportes: TDM_Cadastro_Transportes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM_Principal;

{$R *.dfm}

procedure TDM_Cadastro_Transportes.FDQ_Cad_TransportesAfterDelete(
  DataSet: TDataSet);
begin
FDQ_Cad_Transportes.ApplyUpdates(-1);
FDQ_Cad_Transportes.CommitUpdates;
end;

procedure TDM_Cadastro_Transportes.FDQ_Cad_TransportesAfterPost(
  DataSet: TDataSet);
begin
FDQ_Cad_Transportes.ApplyUpdates(-1);
FDQ_Cad_Transportes.CommitUpdates;
end;

end.
