object FrmPesquisa: TFrmPesquisa
  Left = 0
  Top = 0
  Width = 675
  Height = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Lbl_PesquisarPor: TLabel
    Left = 24
    Top = 16
    Width = 86
    Height = 19
    Caption = 'Pesquisar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_Pesquisa: TLabel
    Left = 43
    Top = 72
    Width = 67
    Height = 19
    Caption = 'Pesquisa:'
  end
  object CMB_PesquisarPor: TComboBox
    Left = 116
    Top = 14
    Width = 213
    Height = 27
    TabOrder = 0
  end
  object Edt_Pesquisa: TEdit
    Left = 116
    Top = 69
    Width = 357
    Height = 27
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object Btn_Pesquisar: TBitBtn
    Left = 488
    Top = 62
    Width = 145
    Height = 41
    Caption = '&Pesquisar'
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
    TabOrder = 2
  end
end
