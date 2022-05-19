object Frm_CadCidades: TFrm_CadCidades
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidades'
  ClientHeight = 551
  ClientWidth = 819
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 183
    Width = 819
    Height = 368
    Align = alBottom
    DataSource = DM_CadEstado_e_Cidade.DS_Cidade
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 803
    Height = 169
    BorderStyle = bsSingle
    TabOrder = 1
    object Lbl_Pesquisa: TLabel
      Left = 16
      Top = 16
      Width = 139
      Height = 19
      Caption = 'Pesquisa de cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl_Codigo: TLabel
      Left = 16
      Top = 57
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Label2: TLabel
      Left = 79
      Top = 57
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit_Cidade
    end
    object Label1: TLabel
      Left = 544
      Top = 57
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Edt_Pesquisa: TEdit
      Left = 161
      Top = 13
      Width = 384
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Btn_Pesquisar: TBitBtn
      Left = 575
      Top = 5
      Width = 145
      Height = 41
      Caption = '&Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_PesquisarClick
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 73
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_CadEstado_e_Cidade.DS_Cidade
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit_Cidade: TDBEdit
      Left = 79
      Top = 73
      Width = 459
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = DM_CadEstado_e_Cidade.DS_Cidade
      TabOrder = 3
    end
    object DBLookupComboBox_Estado: TDBLookupComboBox
      Left = 544
      Top = 73
      Width = 81
      Height = 21
      DataField = 'ESTADO'
      DataSource = DM_CadEstado_e_Cidade.DS_Cidade
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 432
      Top = 114
      Width = 350
      Height = 45
      DataSource = DM_CadEstado_e_Cidade.DS_Cidade
      TabOrder = 5
    end
  end
end
