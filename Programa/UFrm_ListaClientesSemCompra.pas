unit UFrm_ListaClientesSemCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, FireDac.Stan.Param, Vcl.Buttons;

type
  TFrm_ListaClientesSemCompra = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Bevel2: TBevel;
    Lbl_Data: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Btn_Pesquisar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ListaClientesSemCompra: TFrm_ListaClientesSemCompra;

implementation

{$R *.dfm}

uses UDM_ListaClientesSemCompra, UDM_Cadastro_de_Clientes,
  UFrm_Cadastro_de_Clientes, UDM_Principal;

procedure TFrm_ListaClientesSemCompra.Btn_PesquisarClick(Sender: TObject);
begin
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompra.Active := False;
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompra.Params[0].AsDate := DateTimePicker1.Date;
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompra.Params[1].AsDate := DateTimePicker2.Date;
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompra.Active := True;
end;

procedure TFrm_ListaClientesSemCompra.DBGrid1DblClick(Sender: TObject);
begin
  try
  Application.CreateForm(TDM_CadastroClientes, DM_CadastroClientes);
  Application.CreateForm(TFrm_Cadastro_de_Clientes, Frm_Cadastro_de_Clientes);
  DM_CadastroClientes.FDQ_Cidade.SQL.Clear;
  DM_CadastroClientes.FDQ_Cidade.SQL.Add('select cidade.codigo, cidade.cidade,'+
    ' cidade.codestado, estado.estado from cidade inner join estado on '+
    '(cidade.codestado = estado.codigo) order by cidade.cidade');
  DM_CadastroClientes.FDQ_Cidade.Prepare;
  DM_CadastroClientes.FDQ_Cidade.Active := True;
  DM_CadastroClientes.FDQ_Cidade_Entrega.SQL.Clear;
  DM_CadastroClientes.FDQ_Cidade_Entrega.SQL.Add('select cidade.codigo, cidade.cidade,'+
    ' cidade.codestado, estado.estado from cidade inner join estado on '+
    '(cidade.codestado = estado.codigo) order by cidade.cidade');
  DM_CadastroClientes.FDQ_Cidade_Entrega.Prepare;
  DM_CadastroClientes.FDQ_Cidade_Entrega.Active := True;
  DM_CadastroClientes.FDQ_Estado.Active := True;
  DM_CadastroClientes.FDQ_EstadoEntrega.Active := True;
  DM_CadastroClientes.FDQ_Vendedor.Active := True;
  DM_CadastroClientes.FDQ_Categoria.Active := True;
  DM_CadastroClientes.FDQ_SubCategoria.SQL.Clear;
  DM_CadastroClientes.FDQ_SubCategoria.SQL.Add('select subcategoria.codigo, '+
    'subcategoria.subcategoria, subcategoria.codcategoria from subcategoria '+
    'order by subcategoria.subcategoria');
  DM_CadastroClientes.FDQ_SubCategoria.Prepare;
  DM_CadastroClientes.FDQ_SubCategoria.Active := True;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.ParamByName('id').AsInteger :=
    DM_ListaClientesSemCompra.FDQ_ClientesSemCompraCODIGO.AsInteger;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Active := True;
  DM_CadastroClientes.FDQ_CidadeCobranca.SQL.Clear;
  DM_CadastroClientes.FDQ_CidadeCobranca.SQL.Add('select cidade.codigo, cidade.cidade,'+
    ' cidade.codestado, estado.estado from cidade inner join estado on '+
    '(cidade.codestado = estado.codigo) order by cidade.cidade');  DM_CadastroClientes.FDQ_CidadeCobranca.Active := True;

  Frm_Cadastro_de_Clientes.ShowModal;

  if DM_CadastroClientes.FDQ_Cadastro_Cliente.State in [dsEdit, dsInsert] then
  begin
    DM_CadastroClientes.FDQ_Cadastro_Cliente.Cancel;
    DM_CadastroClientes.FDQ_Cadastro_Cliente.CancelUpdates;
  end;

  DM_CadastroClientes.FDQ_Cidade.Active := False;
  DM_CadastroClientes.FDQ_Estado.Active := False;
  DM_CadastroClientes.FDQ_Vendedor.Active := False;
  DM_CadastroClientes.FDQ_Categoria.Active := False;
  DM_CadastroClientes.FDQ_SubCategoria.Active := False;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Active := False;
  DM_CadastroClientes.FDQ_Cidade_Entrega.Active := False;
  DM_CadastroClientes.FDQ_CidadeCobranca.Active := False;
  finally
    FreeAndNil(Frm_Cadastro_de_Clientes);
    FreeAndNil(DM_CadastroClientes);
  end;

end;

procedure TFrm_ListaClientesSemCompra.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Now - 40;
  DateTimePicker2.Date := Now;
end;

end.
