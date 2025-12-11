object Frm_Cadastro_de_Produtos: TFrm_Cadastro_de_Produtos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de produtos'
  ClientHeight = 601
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1264
    Height = 529
    Align = alTop
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 1262
      Height = 527
      Align = alClient
      ExplicitLeft = 2
    end
    object Lbl_Codigo: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Lbl_Cod_fabricante: TLabel
      Left = 103
      Top = 9
      Width = 75
      Height = 13
      Caption = 'C'#243'd. fabricante'
      FocusControl = DBEdit_Cod_fabricante
    end
    object Lbl_Referencia: TLabel
      Left = 351
      Top = 9
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
      FocusControl = DBEdit_Referencia
    end
    object Lbl_Descricao: TLabel
      Left = 663
      Top = 9
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit_Descricao
    end
    object Lbl_Unidade: TLabel
      Left = 16
      Top = 48
      Width = 39
      Height = 13
      Caption = 'Unidade'
      FocusControl = DBEdit_Unidade
    end
    object Lbl_ClassFiscal: TLabel
      Left = 103
      Top = 48
      Width = 58
      Height = 13
      Caption = 'Class. Fiscal'
      FocusControl = DBEdit_ClassFiscal
    end
    object Lbl_CodBarra: TLabel
      Left = 241
      Top = 48
      Width = 67
      Height = 13
      Caption = 'C'#243'd. de Barra'
      FocusControl = DBEdit_CodBarra
    end
    object Lbl_Grupo: TLabel
      Left = 409
      Top = 48
      Width = 29
      Height = 13
      Caption = 'Grupo'
    end
    object Lbl_SubGrupo: TLabel
      Left = 663
      Top = 48
      Width = 47
      Height = 13
      Caption = 'SubGrupo'
    end
    object Lbl_Fabrica: TLabel
      Left = 959
      Top = 48
      Width = 35
      Height = 13
      Caption = 'F'#225'brica'
    end
    object Lbl_Multiplo: TLabel
      Left = 16
      Top = 88
      Width = 36
      Height = 13
      Caption = 'Multiplo'
      FocusControl = DBEdit_Multiplo
    end
    object Lbl_Preco: TLabel
      Left = 71
      Top = 88
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
      FocusControl = DBEdit_Preco
    end
    object Lbl_IPI: TLabel
      Left = 184
      Top = 88
      Width = 14
      Height = 13
      Caption = 'IPI'
      FocusControl = DBEdit_IPI
    end
    object Lbl_Peso: TLabel
      Left = 241
      Top = 88
      Width = 23
      Height = 13
      Caption = 'Peso'
      FocusControl = DBEdit_Peso
    end
    object Lbl_CTS: TLabel
      Left = 314
      Top = 88
      Width = 19
      Height = 13
      Caption = 'CTS'
      FocusControl = DBEdit_CTS
    end
    object Lbl_ICMS: TLabel
      Left = 375
      Top = 88
      Width = 25
      Height = 13
      Caption = 'ICMS'
      FocusControl = DBEdit_ICMS
    end
    object Lbl_Comissao: TLabel
      Left = 431
      Top = 88
      Width = 45
      Height = 13
      Caption = 'Comiss'#227'o'
      FocusControl = DBEdit_Comissao
    end
    object Lbl_STGoias: TLabel
      Left = 495
      Top = 88
      Width = 41
      Height = 13
      Caption = 'ST Goi'#225's'
      FocusControl = DBEdit_STGoias
    end
    object Lbl_STBrasilia: TLabel
      Left = 551
      Top = 88
      Width = 48
      Height = 13
      Caption = 'ST Bras'#237'lia'
      FocusControl = DBEdit_STBrasilia
    end
    object Label1: TLabel
      Left = 16
      Top = 128
      Width = 20
      Height = 13
      Caption = 'OBS'
      FocusControl = DBMemo1
    end
    object Label2: TLabel
      Left = 1206
      Top = 125
      Width = 22
      Height = 13
      Caption = 'Foto'
      FocusControl = DBImage1
    end
    object Label3: TLabel
      Left = 615
      Top = 88
      Width = 50
      Height = 13
      Caption = 'Pre'#231'o Fixo'
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 25
      Width = 81
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_Cod_fabricante: TDBEdit
      Left = 103
      Top = 25
      Width = 242
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODFABRICANTE'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 1
    end
    object DBEdit_Referencia: TDBEdit
      Left = 351
      Top = 25
      Width = 306
      Height = 21
      CharCase = ecUpperCase
      DataField = 'REFERENCIA'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 2
    end
    object DBEdit_Descricao: TDBEdit
      Left = 663
      Top = 25
      Width = 570
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 3
    end
    object DBEdit_Unidade: TDBEdit
      Left = 16
      Top = 64
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UNIDADE'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 4
    end
    object DBEdit_ClassFiscal: TDBEdit
      Left = 103
      Top = 64
      Width = 132
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CLASSFISCAL'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 5
    end
    object DBEdit_CodBarra: TDBEdit
      Left = 241
      Top = 64
      Width = 162
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODBARRA'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 6
    end
    object DBLookupCMB_Grupo: TDBLookupComboBox
      Left = 409
      Top = 64
      Width = 248
      Height = 21
      DataField = 'GRUPO_LOOKUP'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 7
      OnExit = DBLookupCMB_GrupoExit
    end
    object DBLookupCMB_SubGrupo: TDBLookupComboBox
      Left = 663
      Top = 64
      Width = 290
      Height = 21
      DataField = 'SUBGRUPO_LOOKUP'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 8
    end
    object DBLookupCMB_Fabrica: TDBLookupComboBox
      Left = 959
      Top = 64
      Width = 274
      Height = 21
      DataField = 'FABRICA_LOOKUP'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 9
    end
    object DBEdit_Multiplo: TDBEdit
      Left = 16
      Top = 104
      Width = 49
      Height = 21
      DataField = 'EMBAL_MULTIPLO'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 10
    end
    object DBEdit_Preco: TDBEdit
      Left = 71
      Top = 104
      Width = 107
      Height = 21
      DataField = 'PRECO'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 11
    end
    object DBEdit_IPI: TDBEdit
      Left = 184
      Top = 104
      Width = 51
      Height = 21
      DataField = 'IPI'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 12
    end
    object DBEdit_Peso: TDBEdit
      Left = 241
      Top = 104
      Width = 67
      Height = 21
      DataField = 'PESO'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 13
    end
    object DBEdit_CTS: TDBEdit
      Left = 314
      Top = 104
      Width = 55
      Height = 21
      DataField = 'CTS'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 14
    end
    object DBEdit_ICMS: TDBEdit
      Left = 375
      Top = 104
      Width = 50
      Height = 21
      DataField = 'ICMS'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 15
    end
    object DBEdit_Comissao: TDBEdit
      Left = 431
      Top = 104
      Width = 58
      Height = 21
      DataField = 'COMISSAO'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 16
    end
    object DBEdit_STGoias: TDBEdit
      Left = 495
      Top = 104
      Width = 50
      Height = 21
      DataField = 'ST_GOIAS'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 17
    end
    object DBEdit_STBrasilia: TDBEdit
      Left = 551
      Top = 104
      Width = 58
      Height = 21
      DataField = 'ST_BRASILIA'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 18
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 145
      Width = 625
      Height = 384
      DataField = 'OBS'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      ScrollBars = ssVertical
      TabOrder = 19
    end
    object DBImage1: TDBImage
      Left = 663
      Top = 144
      Width = 570
      Height = 384
      DataField = 'FOTO'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      Stretch = True
      TabOrder = 20
    end
    object DBLookupCMB_PrecoFixo: TDBLookupComboBox
      Left = 615
      Top = 104
      Width = 154
      Height = 21
      DataField = 'precofixo_look'
      DataSource = DM_Cadastro_de_Produtos.DS_Cad_Produto
      TabOrder = 21
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 529
    Width = 1264
    Height = 72
    Align = alClient
    TabOrder = 1
    object Btn_Salvar: TBitBtn
      Left = 16
      Top = 6
      Width = 145
      Height = 49
      Caption = '&Salvar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = Btn_SalvarClick
    end
    object Btn_Cancelar: TBitBtn
      Left = 188
      Top = 6
      Width = 145
      Height = 49
      Caption = '&Cancelar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = Btn_CancelarClick
    end
    object Btn_CarregarFoto: TBitBtn
      Left = 928
      Top = 5
      Width = 137
      Height = 33
      Caption = 'Carregar foto'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = Btn_CarregarFotoClick
    end
    object Btn_ApagarFoto: TBitBtn
      Left = 1097
      Top = 6
      Width = 137
      Height = 33
      Caption = 'Apagar foto'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = Btn_ApagarFotoClick
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 808
    Top = 176
  end
end
