object Frm_Pagamentos: TFrm_Pagamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de pagamentos'
  ClientHeight = 516
  ClientWidth = 746
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
    Width = 746
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 581
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 744
      Height = 39
      DataSource = DM_Pagamentos.DS_Pagamentos
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 579
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 746
    Height = 419
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 581
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 744
      Height = 417
      Align = alClient
      DataSource = DM_Pagamentos.DS_Pagamentos
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 746
    Height = 56
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 581
    object Lbl_Codigo: TLabel
      Left = 16
      Top = 5
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Lbl_Pagamento: TLabel
      Left = 104
      Top = 5
      Width = 54
      Height = 13
      Caption = 'Pagamento'
      FocusControl = DBEdit_Pagamento
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 21
      Width = 70
      Height = 21
      DataField = 'CODIGO'
      DataSource = DM_Pagamentos.DS_Pagamentos
      TabOrder = 0
    end
    object DBEdit_Pagamento: TDBEdit
      Left = 104
      Top = 21
      Width = 297
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PAGAMENTO'
      DataSource = DM_Pagamentos.DS_Pagamentos
      TabOrder = 1
    end
    object DBL_Fabrica: TDBLookupComboBox
      Left = 417
      Top = 21
      Width = 272
      Height = 21
      DataField = 'Fabrica'
      DataSource = DM_Pagamentos.DS_Pagamentos
      TabOrder = 2
    end
  end
end
