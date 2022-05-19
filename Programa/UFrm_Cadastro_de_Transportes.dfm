object Frm_Cadastro_de_Transportes: TFrm_Cadastro_de_Transportes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Transportadoras'
  ClientHeight = 601
  ClientWidth = 939
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
    Width = 939
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 88
    ExplicitWidth = 185
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 937
      Height = 39
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 152
      ExplicitTop = 8
      ExplicitWidth = 240
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 264
    Width = 939
    Height = 337
    Align = alBottom
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 937
      Height = 335
      Align = alClient
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
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
    Width = 939
    Height = 223
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 256
    object Lbl_Codigo: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Lbl_NomeFantasia: TLabel
      Left = 79
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      FocusControl = DBEditNomeFantasia
    end
    object Lbl_RazãoSocial: TLabel
      Left = 359
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Raz'#227'o social'
      FocusControl = DBEdit_RazaoSocial
    end
    object Lbl_CGC: TLabel
      Left = 744
      Top = 8
      Width = 21
      Height = 13
      Caption = 'CGC'
      FocusControl = DBEdit_CGC
    end
    object Lbl_InscricaoEstadual: TLabel
      Left = 16
      Top = 48
      Width = 87
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = DBEdit_InscricaoEstadual
    end
    object Lbl_Endereco: TLabel
      Left = 127
      Top = 48
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit_Endereco
    end
    object Lbl_Bairro: TLabel
      Left = 424
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit_Bairro
    end
    object Lbl_Numero: TLabel
      Left = 640
      Top = 48
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit_Numero
    end
    object Lbl_Cidade: TLabel
      Left = 713
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object SpeedButton_Cidade: TSpeedButton
      Left = 890
      Top = 63
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton_CidadeClick
    end
    object Lbl_Estado: TLabel
      Left = 16
      Top = 88
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object SpeedButton_Estado: TSpeedButton
      Left = 89
      Top = 103
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton_EstadoClick
    end
    object Lbl_Cep: TLabel
      Left = 118
      Top = 88
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit_Cep
    end
    object Lbl_Contatos: TLabel
      Left = 223
      Top = 88
      Width = 44
      Height = 13
      Caption = 'Contatos'
      FocusControl = DBEdit_Contatos
    end
    object Lbl_Telefone: TLabel
      Left = 424
      Top = 88
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit_Telefone
    end
    object Lbl_Fax: TLabel
      Left = 551
      Top = 88
      Width = 18
      Height = 13
      Caption = 'Fax'
      FocusControl = DBEdit_Fax
    end
    object Lbl_Email: TLabel
      Left = 681
      Top = 88
      Width = 28
      Height = 13
      Caption = 'E-Mail'
      FocusControl = DBEdit_Email
    end
    object Label1: TLabel
      Left = 16
      Top = 128
      Width = 20
      Height = 13
      Caption = 'OBS'
      FocusControl = DBMemo1
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 24
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 0
    end
    object DBEditNomeFantasia: TDBEdit
      Left = 79
      Top = 24
      Width = 274
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEFANTASIA'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 1
    end
    object DBEdit_RazaoSocial: TDBEdit
      Left = 359
      Top = 24
      Width = 379
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RAZAOSOCIAL'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 2
    end
    object DBEdit_CGC: TDBEdit
      Left = 744
      Top = 24
      Width = 169
      Height = 21
      DataField = 'CGC'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 3
    end
    object DBEdit_InscricaoEstadual: TDBEdit
      Left = 16
      Top = 64
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      DataField = 'INSCRICAO'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 4
    end
    object DBEdit_Endereco: TDBEdit
      Left = 127
      Top = 64
      Width = 291
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 5
    end
    object DBEdit_Bairro: TDBEdit
      Left = 424
      Top = 64
      Width = 210
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 6
    end
    object DBEdit_Numero: TDBEdit
      Left = 640
      Top = 64
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 7
    end
    object DBLookupCMB_Cidade: TDBLookupComboBox
      Left = 713
      Top = 64
      Width = 176
      Height = 21
      DataField = 'CIDADE_LOOKUP'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 8
      OnCloseUp = DBLookupCMB_CidadeCloseUp
    end
    object DBLookupCMB_Estado: TDBLookupComboBox
      Left = 16
      Top = 104
      Width = 73
      Height = 21
      DataField = 'ESTADO_LOOKUP'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 9
    end
    object DBEdit_Cep: TDBEdit
      Left = 118
      Top = 104
      Width = 99
      Height = 21
      DataField = 'CEP'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 10
    end
    object DBEdit_Contatos: TDBEdit
      Left = 223
      Top = 104
      Width = 195
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONTATOS'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 11
    end
    object DBEdit_Telefone: TDBEdit
      Left = 424
      Top = 104
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 12
    end
    object DBEdit_Fax: TDBEdit
      Left = 551
      Top = 104
      Width = 124
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FAX'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 13
    end
    object DBEdit_Email: TDBEdit
      Left = 681
      Top = 104
      Width = 232
      Height = 21
      DataField = 'EMAIL'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      TabOrder = 14
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 144
      Width = 897
      Height = 73
      DataField = 'OBS'
      DataSource = DM_Cadastro_Transportes.DS_Cad_Transportes
      ScrollBars = ssVertical
      TabOrder = 15
    end
  end
end
