unit UFrm_Cadastro_de_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Param, Vcl.Buttons,
  Vcl.ExtDlgs, DB, Clipbrd;

type
  TFrm_Cadastro_de_Clientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Lbl_Data: TLabel;
    DBEdit_Data: TDBEdit;
    Lbl_NomeFantasia: TLabel;
    DBEdit_NomeFantasia: TDBEdit;
    Lbl_RazaoSocial: TLabel;
    DBEdit_RazaoSocial: TDBEdit;
    Lbl_CGC: TLabel;
    DBEdit_CGC: TDBEdit;
    Lbl_InscricaoEstadual: TLabel;
    DBEdit_InscricaoEstadual: TDBEdit;
    Lbl_InscricaoMunicipal: TLabel;
    DBEdit_InscricaoMunicipal: TDBEdit;
    Lbl_Endereco: TLabel;
    DBEdit_Endereco: TDBEdit;
    Lbl_Bairro: TLabel;
    DBEdit_Bairro: TDBEdit;
    Lbl_Numero: TLabel;
    DBEdit_Numero: TDBEdit;
    Label1: TLabel;
    DBLookupCMB_Estado: TDBLookupComboBox;
    Lbl_Cidade: TLabel;
    DBLookupCMB_Cidade: TDBLookupComboBox;
    Lbl_Cep: TLabel;
    DBEdit_Cep: TDBEdit;
    Lbl_Contatos: TLabel;
    DBEdit_Contatos: TDBEdit;
    Lbl_Telefone: TLabel;
    DBEdit_Telefone: TDBEdit;
    Lbl_Telefone2: TLabel;
    DBEdit_Telefone2: TDBEdit;
    Lbl_Fax: TLabel;
    DBEdit_Fax: TDBEdit;
    Lbl_Email: TLabel;
    DBEdit_Email: TDBEdit;
    Lbl_Email_NFe: TLabel;
    DBEdit_Email_NFe: TDBEdit;
    Lbl_Email_Servicos: TLabel;
    DBEdit_Email_Servicos: TDBEdit;
    Lbl_Credito: TLabel;
    DBEdit_Credito: TDBEdit;
    Lbl_AtivoOuNao: TLabel;
    DBCMB_Ativo_Ou_Nao: TDBComboBox;
    Lbl_Vendedor: TLabel;
    DBLookupCMB_Vendedor: TDBLookupComboBox;
    Lbl_Categoria: TLabel;
    DBLookupCMB_Categoria: TDBLookupComboBox;
    Lbl_SubCategoria: TLabel;
    DBLookupCMB_SubCategoria: TDBLookupComboBox;
    SpeedButton_Cidade: TSpeedButton;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBImage1: TDBImage;
    Btn_Salvar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    Btn_CarregarFoto: TBitBtn;
    Btn_ApagarFoto: TBitBtn;
    Lbl_CGC_de_Entrega: TLabel;
    DBEdit_CGC_de_Entrega: TDBEdit;
    Lbl_InscricaoEstadualDeEntrega: TLabel;
    DBEdit_InscricaoEstadualEntrega: TDBEdit;
    Lbl_InscricaoMunicipalEntrega: TLabel;
    DBEdit_InscricaoMunicipalEntrega: TDBEdit;
    Lbl_EnderecoEntrega: TLabel;
    DBEdit_EnderecoEntrega: TDBEdit;
    Lbl_BairroEntrega: TLabel;
    DBEdit_BairroEntrega: TDBEdit;
    Lbl_EstadoEntrega: TLabel;
    DBLookupCMB_EstadoEntrega: TDBLookupComboBox;
    Lbl_Cidade_Entrega: TLabel;
    DBLookupCMB_Cidade_Entrega: TDBLookupComboBox;
    Lbl_Numero_Entrega: TLabel;
    DBEdit1: TDBEdit;
    Lbl_Cep_Entrega: TLabel;
    DBEdit_CepEntrega: TDBEdit;
    Lbl_ContatoEntrega: TLabel;
    DBEdit_ContatosEntrega: TDBEdit;
    Lbl_TelefoneEntrega: TLabel;
    DBEdit_TelefoneEntrega: TDBEdit;
    Lbl_FaxEntrega: TLabel;
    DBEdit_FaxEntrega: TDBEdit;
    Lbl_EmailEntrega: TLabel;
    DBEdit_EmailEntrega: TDBEdit;
    Label4: TLabel;
    DBMemo2: TDBMemo;
    Lbl_CGC_Cobranca: TLabel;
    DBEdit_CGC_Cobranca: TDBEdit;
    Lbl_InscricaoCobranca: TLabel;
    DBEdit_InscricaoEstadualCobranca: TDBEdit;
    Lbl_InscricaoMunicipalCobranca: TLabel;
    DBEdit_inscricaoMunicipalCobranca: TDBEdit;
    Lbl_EnderecoCobranca: TLabel;
    DBEdit_EnderecoCobranca: TDBEdit;
    Lbl_Bairro_Cobranca: TLabel;
    DBEdit_BairroCobranca: TDBEdit;
    Lbl_EstadoCobranca: TLabel;
    DBLookupCMB_EstadoCobranca: TDBLookupComboBox;
    Lbl_CidadeCobranca: TLabel;
    DBLookupCMB_CidadeCobranca: TDBLookupComboBox;
    Lbl_Cep_Cobranca: TLabel;
    DBEdit_Cep_Cobranca: TDBEdit;
    Lbl_NumeroCobranca: TLabel;
    DBEdit_NumeroCobranca: TDBEdit;
    Lbl_ContatoCobranca: TLabel;
    DBEdit_ContatoCobranca: TDBEdit;
    Lbl_TelefoneCobranca: TLabel;
    DBEdit_TelefoneCobranca: TDBEdit;
    Lbl_FaxCobranca: TLabel;
    DBEdit_FaxCobranca: TDBEdit;
    Lbl_EmailCobranca: TLabel;
    DBEdit_EmailCobranca: TDBEdit;
    Label5: TLabel;
    DBMemo3: TDBMemo;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormShow(Sender: TObject);
    procedure DBLookupCMB_EstadoExit(Sender: TObject);
    procedure DBLookupCMB_CategoriaExit(Sender: TObject);
    procedure Btn_CarregarFotoClick(Sender: TObject);
    procedure Btn_ApagarFotoClick(Sender: TObject);
    procedure DBLookupCMB_EstadoEntregaExit(Sender: TObject);
    procedure DBLookupCMB_EstadoCobrancaExit(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_SalvarClick(Sender: TObject);
    procedure SpeedButton_CidadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_de_Clientes: TFrm_Cadastro_de_Clientes;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Clientes, UFrm_Principal;

procedure TFrm_Cadastro_de_Clientes.Btn_ApagarFotoClick(Sender: TObject);
begin
if DM_CadastroClientes.FDQ_Cadastro_Cliente.State = dsBrowse then
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Edit;

  DM_CadastroClientes.FDQ_Cadastro_ClienteFOTO.Clear;

end;

procedure TFrm_Cadastro_de_Clientes.Btn_CancelarClick(Sender: TObject);
begin
if DM_CadastroClientes.FDQ_Cadastro_Cliente.State in [dsEdit, dsInsert] then
begin
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Cancel;
  DM_CadastroClientes.FDQ_Cadastro_Cliente.CancelUpdates;
end;
Close;
end;

procedure TFrm_Cadastro_de_Clientes.Btn_CarregarFotoClick(Sender: TObject);
var imagem: TPicture;
begin
if DM_CadastroClientes.FDQ_Cadastro_Cliente.State = dsBrowse then
  DM_CadastroClientes.FDQ_Cadastro_Cliente.Edit;

  if OpenPictureDialog1.Execute then
  begin
    // cria variável p/armazenar imagem
    imagem := TPicture.Create();
    // busca imagem do arquivo e joga na vairavel
    imagem.LoadFromFile(OpenPictureDialog1.FileName);
    // passa a imagem p/clipboard
    Clipboard.Assign(imagem);
    // copia imagem para a coluna "foto"
    DBImage1.PasteFromClipboard;
    // libera variavel
    imagem.Free;
  end;

end;

procedure TFrm_Cadastro_de_Clientes.Btn_SalvarClick(Sender: TObject);
begin
  if DM_CadastroClientes.FDQ_Cadastro_Cliente.State in [dsEdit, dsInsert] then
  begin
    if (DBEdit_NomeFantasia.Text <> '') and (DBEdit_RazaoSocial.Text <> '') then
    begin
     DM_CadastroClientes.FDQ_Cadastro_Cliente.Post;
     DM_CadastroClientes.FDQ_Cadastro_Cliente.ApplyUpdates(-1);
     DM_CadastroClientes.FDQ_Cadastro_Cliente.CommitUpdates;
     Close;
    end else
     ShowMessage('Os campos Nome Fantasia e Razão Social precisão ser preenchidos!');
  end else
    Close;
end;

procedure TFrm_Cadastro_de_Clientes.DBLookupCMB_CategoriaExit(Sender: TObject);
begin
DM_CadastroClientes.FDQ_SubCategoria.Active := False;
DM_CadastroClientes.FDQ_SubCategoria.SQL.Clear;
DM_CadastroClientes.FDQ_SubCategoria.SQL.Add('select subcategoria.codigo, '+
  'subcategoria.subcategoria, subcategoria.codcategoria from subcategoria '+
  'where ((subcategoria.codcategoria =:cod)) order by subcategoria.subcategoria');
DM_CadastroClientes.FDQ_SubCategoria.Prepare;
DM_CadastroClientes.FDQ_SubCategoria.ParamByName('cod').AsInteger :=
  DM_CadastroClientes.FDQ_Cadastro_ClienteCODCATEGORIA.AsInteger;
DM_CadastroClientes.FDQ_SubCategoria.Active := True;
end;

procedure TFrm_Cadastro_de_Clientes.DBLookupCMB_EstadoCobrancaExit(
  Sender: TObject);
begin
DM_CadastroClientes.FDQ_CidadeCobranca.Active := False;
DM_CadastroClientes.FDQ_CidadeCobranca.SQL.Clear;
DM_CadastroClientes.FDQ_CidadeCobranca.SQL.Add('select cidade.codigo, cidade.cidade, '+
  'cidade.codestado, estado.estado from cidade inner join estado on '+
  '(cidade.codestado = estado.codigo) where ((cidade.codestado =:cod)) '+
  'order by cidade.cidade');
DM_CadastroClientes.FDQ_CidadeCobranca.Prepare;
DM_CadastroClientes.FDQ_CidadeCobranca.ParamByName('cod').AsInteger := DM_CadastroClientes.FDQ_EstadoCODIGO.AsInteger;
DM_CadastroClientes.FDQ_CidadeCobranca.Active := True;
end;

procedure TFrm_Cadastro_de_Clientes.DBLookupCMB_EstadoEntregaExit(
  Sender: TObject);
begin
DM_CadastroClientes.FDQ_Cidade_Entrega.Active := False;
DM_CadastroClientes.FDQ_Cidade_Entrega.SQL.Clear;
DM_CadastroClientes.FDQ_Cidade_Entrega.SQL.Add('select cidade.codigo, cidade.cidade, '+
  'cidade.codestado, estado.estado from cidade inner join estado on '+
  '(cidade.codestado = estado.codigo) where ((cidade.codestado =:cod)) '+
  'order by cidade.cidade');
DM_CadastroClientes.FDQ_Cidade_Entrega.Prepare;
DM_CadastroClientes.FDQ_Cidade_Entrega.ParamByName('cod').AsInteger :=
  DM_CadastroClientes.FDQ_EstadoEntregaCODIGO.AsInteger;
DM_CadastroClientes.FDQ_Cidade_Entrega.Active := True;
end;

procedure TFrm_Cadastro_de_Clientes.DBLookupCMB_EstadoExit(Sender: TObject);
begin
DM_CadastroClientes.FDQ_Cidade.Active := False;
DM_CadastroClientes.FDQ_Cidade.SQL.Clear;
DM_CadastroClientes.FDQ_Cidade.SQL.Add('select cidade.codigo, cidade.cidade, '+
  'cidade.codestado, estado.estado from cidade inner join estado on '+
  '(cidade.codestado = estado.codigo) where ((cidade.codestado =:cod)) '+
  'order by cidade.cidade');
DM_CadastroClientes.FDQ_Cidade.Prepare;
DM_CadastroClientes.FDQ_Cidade.ParamByName('cod').AsInteger := DM_CadastroClientes.FDQ_EstadoCODIGO.AsInteger;
DM_CadastroClientes.FDQ_Cidade.Active := True;
end;

procedure TFrm_Cadastro_de_Clientes.FormShow(Sender: TObject);
begin
if DM_CadastroClientes.FDQ_Cadastro_Cliente.State in [dsEdit, dsInsert] then
begin
  DM_CadastroClientes.FDQ_Cadastro_ClienteDATA.AsDateTime := Now;
  DM_CadastroClientes.FDQ_Cadastro_ClienteATIVOOUNAO.AsString := 'ATIVO';
end;
PageControl1.ActivePageIndex := 0;
end;

procedure TFrm_Cadastro_de_Clientes.SpeedButton_CidadeClick(Sender: TObject);
begin
Frm_Principal.CadastroCidades(Sender);
DM_CadastroClientes.FDQ_Cidade.Refresh;
end;

end.
