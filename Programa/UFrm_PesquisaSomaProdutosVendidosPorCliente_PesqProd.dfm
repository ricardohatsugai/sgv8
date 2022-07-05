object Frm_PesquisaSomaProdutosVendidosPorCliente_PesqProd: TFrm_PesquisaSomaProdutosVendidosPorCliente_PesqProd
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa de Produto'
  ClientHeight = 618
  ClientWidth = 1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 96
    Width = 1080
    Height = 522
    Align = alBottom
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1078
      Height = 520
      Align = alClient
      DataSource = DM_TotalProdVendPorCliente.DS_ProdutoPesq
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Width = 383
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 96
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 79
      Height = 19
      Caption = 'Refer'#234'ncia:'
    end
    object Edit1: TEdit
      Left = 109
      Top = 29
      Width = 276
      Height = 27
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Btn_Pesquisar: TBitBtn
      Left = 408
      Top = 22
      Width = 177
      Height = 42
      Caption = '&Pesquisar'
      Default = True
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
      TabOrder = 1
      OnClick = Btn_PesquisarClick
    end
  end
end
