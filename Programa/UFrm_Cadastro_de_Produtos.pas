unit UFrm_Cadastro_de_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.Buttons, DB, Clipbrd, FireDAC.Stan.Param;

type
  TFrm_Cadastro_de_Produtos = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Lbl_Codigo: TLabel;
    DBEdit_Codigo: TDBEdit;
    Lbl_Cod_fabricante: TLabel;
    DBEdit_Cod_fabricante: TDBEdit;
    Lbl_Referencia: TLabel;
    DBEdit_Referencia: TDBEdit;
    Lbl_Descricao: TLabel;
    DBEdit_Descricao: TDBEdit;
    Lbl_Unidade: TLabel;
    DBEdit_Unidade: TDBEdit;
    Lbl_ClassFiscal: TLabel;
    DBEdit_ClassFiscal: TDBEdit;
    Lbl_CodBarra: TLabel;
    DBEdit_CodBarra: TDBEdit;
    Lbl_Grupo: TLabel;
    DBLookupCMB_Grupo: TDBLookupComboBox;
    Lbl_SubGrupo: TLabel;
    DBLookupCMB_SubGrupo: TDBLookupComboBox;
    Lbl_Fabrica: TLabel;
    DBLookupCMB_Fabrica: TDBLookupComboBox;
    Lbl_Multiplo: TLabel;
    DBEdit_Multiplo: TDBEdit;
    Lbl_Preco: TLabel;
    DBEdit_Preco: TDBEdit;
    Lbl_IPI: TLabel;
    DBEdit_IPI: TDBEdit;
    Lbl_Peso: TLabel;
    DBEdit_Peso: TDBEdit;
    Lbl_CTS: TLabel;
    DBEdit_CTS: TDBEdit;
    Lbl_ICMS: TLabel;
    DBEdit_ICMS: TDBEdit;
    Lbl_Comissao: TLabel;
    DBEdit_Comissao: TDBEdit;
    Lbl_STGoias: TLabel;
    DBEdit_STGoias: TDBEdit;
    Lbl_STBrasilia: TLabel;
    DBEdit_STBrasilia: TDBEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBImage1: TDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel2: TPanel;
    Btn_Salvar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    Btn_CarregarFoto: TBitBtn;
    Btn_ApagarFoto: TBitBtn;
    procedure Btn_CarregarFotoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_SalvarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ApagarFotoClick(Sender: TObject);
    procedure DBLookupCMB_GrupoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_de_Produtos: TFrm_Cadastro_de_Produtos;

implementation

{$R *.dfm}

uses UDM_Cadastro_de_Produtos;

procedure TFrm_Cadastro_de_Produtos.Btn_ApagarFotoClick(Sender: TObject);
begin
  if DM_Cadastro_de_Produtos.FDQ_Cad_Produto.State = dsBrowse then
    DM_Cadastro_de_Produtos.FDQ_Cad_Produto.Edit;

    DM_Cadastro_de_Produtos.FDQ_Cad_ProdutoFOTO.Clear;

end;

procedure TFrm_Cadastro_de_Produtos.Btn_CancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Cadastro_de_Produtos.Btn_CarregarFotoClick(Sender: TObject);
var imagem: TPicture;
begin
  if DM_Cadastro_de_Produtos.FDQ_Cad_Produto.State = dsBrowse then
    DM_Cadastro_de_Produtos.FDQ_Cad_Produto.Edit;

    if OpenPictureDialog1.Execute then
    begin
      // cria a variavel p/armazenar imagem
      imagem := TPicture.Create();
      // busca imagem do arquivo e joga na variavel
      imagem.LoadFromFile(OpenPictureDialog1.FileName);
      // passa imagem p/clipboard
      Clipboard.Assign(imagem);
      // copia imagem para a coluna " foto "
      DBImage1.PasteFromClipboard;
      // libera variavel
      imagem.Free;
    end;
end;

procedure TFrm_Cadastro_de_Produtos.Btn_SalvarClick(Sender: TObject);
begin
  if DM_Cadastro_de_Produtos.FDQ_Cad_Produto.State in [dsEdit, dsInsert] then
  begin
    if (DBEdit_Cod_fabricante.Text <> '') and (DBEdit_Referencia.Text <> '') then
    begin
      DM_Cadastro_de_Produtos.FDQ_Cad_Produto.Post;
      DM_Cadastro_de_Produtos.FDQ_Cad_Produto.ApplyUpdates(-1);
      DM_Cadastro_de_Produtos.FDQ_Cad_Produto.CommitUpdates;
      Close;
    end else
    begin
      ShowMessage('Os campos Cód. do fabricante e Referência, não pode ser nulos!');
      DBEdit_Cod_fabricante.SetFocus;
    end;
  end else
    Close;

end;

procedure TFrm_Cadastro_de_Produtos.DBLookupCMB_GrupoExit(Sender: TObject);
begin
if DM_Cadastro_de_Produtos.FDQ_Cad_Produto.State in [dsEdit] then
begin
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.SQL.Clear;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.SQL.Add('select subgrupo.codigo, '+
    'subgrupo.subgrupo, '+
    'subgrupo.codgrupo '+
'from subgrupo '+
'where '+
   '( '+
      '(subgrupo.codgrupo =:cod)'+
   ')'+
'order by subgrupo.subgrupo ');
end;

  DM_Cadastro_de_Produtos.FDQ_SubGrupo.Close;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.ParamByName('cod').AsInteger :=
   DM_Cadastro_de_Produtos.FDQ_GrupoCODIGO.AsInteger;
  DM_Cadastro_de_Produtos.FDQ_SubGrupo.Open;
end;

procedure TFrm_Cadastro_de_Produtos.FormShow(Sender: TObject);
begin
DBEdit_Cod_fabricante.SetFocus;
end;

end.
