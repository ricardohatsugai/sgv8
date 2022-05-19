object Frm_Cadastro_de_Vendedores: TFrm_Cadastro_de_Vendedores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 601
  ClientWidth = 1118
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
    Width = 1118
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitTop = 72
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 1116
      Height = 39
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 216
      ExplicitTop = 0
      ExplicitWidth = 240
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1118
    Height = 216
    Align = alTop
    TabOrder = 1
    object Lbl_Codigo: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_codigo
    end
    object Lbl_Nome: TLabel
      Left = 79
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit_Nome
    end
    object Lbl_Identidade: TLabel
      Left = 423
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Identidade'
      FocusControl = DBEdit_Identidade
    end
    object Lbl_Cpf: TLabel
      Left = 543
      Top = 8
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = DBEdit_Cpf
    end
    object Lbl_Endereco: TLabel
      Left = 647
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit_Endereco
    end
    object Lbl_Bairro: TLabel
      Left = 16
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit_Bairro
    end
    object Lbl_Numero: TLabel
      Left = 207
      Top = 48
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit_Numero
    end
    object Lbl_Cidade: TLabel
      Left = 279
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Lbl_Estado: TLabel
      Left = 527
      Top = 48
      Width = 40
      Height = 13
      Caption = 'ESTADO'
    end
    object Lbl_Cep: TLabel
      Left = 607
      Top = 48
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit_Cep
    end
    object Lbl_Celular: TLabel
      Left = 711
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Celular'
      FocusControl = DBEdit_Celular
    end
    object Lbl_Telefone: TLabel
      Left = 831
      Top = 48
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit_Telefone
    end
    object Lbl_Fax: TLabel
      Left = 959
      Top = 48
      Width = 18
      Height = 13
      Caption = 'Fax'
      FocusControl = DBEdit_fax
    end
    object Label1: TLabel
      Left = 16
      Top = 88
      Width = 19
      Height = 13
      Caption = 'Obs'
      FocusControl = DBMemo1
    end
    object DBEdit_codigo: TDBEdit
      Left = 16
      Top = 24
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 0
    end
    object DBEdit_Nome: TDBEdit
      Left = 79
      Top = 24
      Width = 338
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 1
    end
    object DBEdit_Identidade: TDBEdit
      Left = 423
      Top = 24
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ID'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 2
    end
    object DBEdit_Cpf: TDBEdit
      Left = 543
      Top = 24
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 3
    end
    object DBEdit_Endereco: TDBEdit
      Left = 647
      Top = 24
      Width = 450
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 4
    end
    object DBEdit_Bairro: TDBEdit
      Left = 16
      Top = 64
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 5
    end
    object DBEdit_Numero: TDBEdit
      Left = 207
      Top = 64
      Width = 66
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 6
    end
    object DBLookupCMB_Cidade: TDBLookupComboBox
      Left = 280
      Top = 64
      Width = 241
      Height = 21
      DataField = 'CIDADE'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 7
    end
    object DBLookupCMB_Estado: TDBLookupComboBox
      Left = 527
      Top = 64
      Width = 74
      Height = 21
      DataField = 'ESTADO'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 8
    end
    object DBEdit_Cep: TDBEdit
      Left = 607
      Top = 64
      Width = 98
      Height = 21
      DataField = 'CEP'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 9
    end
    object DBEdit_Celular: TDBEdit
      Left = 711
      Top = 64
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CELULAR'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 10
    end
    object DBEdit_Telefone: TDBEdit
      Left = 831
      Top = 64
      Width = 122
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 11
    end
    object DBEdit_fax: TDBEdit
      Left = 959
      Top = 64
      Width = 138
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FAX'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      TabOrder = 12
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 104
      Width = 1081
      Height = 97
      DataField = 'OBS'
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
      ScrollBars = ssVertical
      TabOrder = 13
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 257
    Width = 1118
    Height = 344
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 336
    ExplicitTop = 336
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1116
      Height = 342
      Align = alClient
      DataSource = DM_Cadastro_de_Vendedores.DS_Vendedores
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
          FieldName = 'NOME'
          Width = 355
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Visible = True
        end>
    end
  end
end
