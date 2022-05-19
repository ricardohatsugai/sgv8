object Frm_Lista_Representadas: TFrm_Lista_Representadas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de Representadas'
  ClientHeight = 601
  ClientWidth = 1254
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1254
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 280
    ExplicitTop = 40
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 1252
      Height = 39
      DataSource = DM_Representadas.DS_Lista_Representadas
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 440
      ExplicitTop = 16
      ExplicitWidth = 240
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 1254
    Height = 201
    Align = alBottom
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1252
      Height = 199
      Align = alClient
      DataSource = DM_Representadas.DS_Lista_Representadas
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFANTASIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CGC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INSCRICAO'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1254
    Height = 359
    Align = alClient
    TabOrder = 2
    ExplicitTop = 36
    ExplicitHeight = 231
    object Lbl_Codigo: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Lbl_NomeFantasia: TLabel
      Left = 71
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      FocusControl = DBEdit_NomeFantasia
    end
    object Lbl_RazaoSocial: TLabel
      Left = 319
      Top = 8
      Width = 60
      Height = 13
      Caption = 'Raz'#227'o Social'
      FocusControl = DBEdit_RazaoSocial
    end
    object Lbl_CGC: TLabel
      Left = 647
      Top = 8
      Width = 21
      Height = 13
      Caption = 'CGC'
      FocusControl = DBEdit_CGC
    end
    object Lbl_InscricaoEstadual: TLabel
      Left = 807
      Top = 8
      Width = 87
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = DBEdit_InscricaoEstadual
    end
    object Lbl_Endereco: TLabel
      Left = 927
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit_Endereco
    end
    object Lbl_Bairro: TLabel
      Left = 8
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit_Bairro
    end
    object Lbl_Numero: TLabel
      Left = 199
      Top = 48
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit_Numero
    end
    object Lbl_Cidade: TLabel
      Left = 263
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Lbl_Estado: TLabel
      Left = 495
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = DBEdit_Estado
    end
    object Lbl_Cep: TLabel
      Left = 559
      Top = 48
      Width = 19
      Height = 13
      Caption = 'Cep'
      FocusControl = DBEdit_Cep
    end
    object Lbl_Contatos: TLabel
      Left = 655
      Top = 48
      Width = 44
      Height = 13
      Caption = 'Contatos'
      FocusControl = DBEdit_Contatos
    end
    object Lbl_Telefones1: TLabel
      Left = 927
      Top = 48
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit_Telefones
    end
    object Lbl_Telefones2: TLabel
      Left = 1095
      Top = 48
      Width = 51
      Height = 13
      Caption = 'Telefone 2'
      FocusControl = DBEdit_Telefones2
    end
    object Lbl_Fax: TLabel
      Left = 8
      Top = 90
      Width = 18
      Height = 13
      Caption = 'Fax'
      FocusControl = DBEdit_Fax
    end
    object Lbl_Email: TLabel
      Left = 148
      Top = 90
      Width = 28
      Height = 13
      Caption = 'E-Mail'
      FocusControl = DBEdit_Email
    end
    object Lbl_CodDecimal: TLabel
      Left = 385
      Top = 90
      Width = 61
      Height = 13
      Caption = 'C'#243'd. decimal'
      FocusControl = DBEdit_CodDecimal
    end
    object Label1: TLabel
      Left = 8
      Top = 128
      Width = 20
      Height = 13
      Caption = 'OBS'
      FocusControl = DBMemo1
    end
    object DBEdit_Codigo: TDBEdit
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_Representadas.DS_Lista_Representadas
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_NomeFantasia: TDBEdit
      Left = 71
      Top = 24
      Width = 242
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEFANTASIA'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 1
    end
    object DBEdit_RazaoSocial: TDBEdit
      Left = 319
      Top = 24
      Width = 322
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RAZAOSOCIAL'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 2
    end
    object DBEdit_CGC: TDBEdit
      Left = 647
      Top = 24
      Width = 154
      Height = 21
      DataField = 'CGC'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 3
    end
    object DBEdit_InscricaoEstadual: TDBEdit
      Left = 807
      Top = 24
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      DataField = 'INSCRICAO'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 4
    end
    object DBEdit_Endereco: TDBEdit
      Left = 927
      Top = 24
      Width = 306
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 5
    end
    object DBEdit_Bairro: TDBEdit
      Left = 8
      Top = 64
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 6
    end
    object DBEdit_Numero: TDBEdit
      Left = 199
      Top = 64
      Width = 58
      Height = 21
      DataField = 'NUMERO'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 7
    end
    object DBLookupCMB_Cidade: TDBLookupComboBox
      Left = 263
      Top = 64
      Width = 226
      Height = 21
      DataField = 'CIDADE'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 8
      OnExit = DBLookupCMB_CidadeExit
    end
    object DBEdit_Estado: TDBEdit
      Left = 495
      Top = 64
      Width = 58
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ESTADO'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 9
    end
    object DBEdit_Cep: TDBEdit
      Left = 559
      Top = 64
      Width = 90
      Height = 21
      DataField = 'CEP'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 10
    end
    object DBEdit_Contatos: TDBEdit
      Left = 655
      Top = 64
      Width = 266
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTATOS'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 11
    end
    object DBEdit_Telefones: TDBEdit
      Left = 927
      Top = 64
      Width = 162
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 12
    end
    object DBEdit_Telefones2: TDBEdit
      Left = 1095
      Top = 64
      Width = 138
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE2'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 13
    end
    object DBEdit_Fax: TDBEdit
      Left = 8
      Top = 106
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FAX'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 14
    end
    object DBEdit_Email: TDBEdit
      Left = 148
      Top = 106
      Width = 231
      Height = 21
      DataField = 'EMAIL'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 15
    end
    object DBEdit_CodDecimal: TDBEdit
      Left = 385
      Top = 106
      Width = 61
      Height = 21
      DataField = 'CODDECIMAL'
      DataSource = DM_Representadas.DS_Lista_Representadas
      TabOrder = 16
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 144
      Width = 1225
      Height = 201
      DataField = 'OBS'
      DataSource = DM_Representadas.DS_Lista_Representadas
      ScrollBars = ssVertical
      TabOrder = 17
    end
  end
end
