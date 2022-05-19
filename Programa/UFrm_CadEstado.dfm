object Frm_CadEstado: TFrm_CadEstado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Estados'
  ClientHeight = 492
  ClientWidth = 552
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
  object Lbl_Codigo: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit_Codigo
  end
  object Lbl_Estado: TLabel
    Left = 71
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = DBEdit_Estado
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 98
    Width = 552
    Height = 394
    Align = alBottom
    DataSource = DM_CadEstado_e_Cidade.DS_Estado
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 51
    Width = 310
    Height = 41
    DataSource = DM_CadEstado_e_Cidade.DS_Estado
    TabOrder = 1
  end
  object DBEdit_Codigo: TDBEdit
    Left = 8
    Top = 24
    Width = 57
    Height = 21
    DataField = 'CODIGO'
    DataSource = DM_CadEstado_e_Cidade.DS_Estado
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit_Estado: TDBEdit
    Left = 71
    Top = 24
    Width = 58
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESTADO'
    DataSource = DM_CadEstado_e_Cidade.DS_Estado
    TabOrder = 3
  end
end
