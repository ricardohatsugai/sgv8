object DM_Pagamentos: TDM_Pagamentos
  OldCreateOrder = False
  Height = 476
  Width = 574
  object FDQ_Pagamento: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    pagamento.codigo,'
      '    pagamento.pagamento'
      'from pagamento '
      'order by pagamento.pagamento')
    Left = 48
    Top = 24
    object FDQ_PagamentoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_PagamentoPAGAMENTO: TStringField
      DisplayLabel = 'Pagamento'
      DisplayWidth = 30
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object DS_Pagamentos: TDataSource
    DataSet = FDQ_Pagamento
    Left = 48
    Top = 80
  end
end
