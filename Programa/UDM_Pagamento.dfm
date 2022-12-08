object DM_Pagamentos: TDM_Pagamentos
  OldCreateOrder = False
  Height = 476
  Width = 574
  object FDQ_Pagamento: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    p.codigo,'
      '    p.pagamento,'
      '    p.cod_fab'
      'from pagamento p'
      'order by p.pagamento')
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
    object FDQ_PagamentoCOD_FAB: TIntegerField
      FieldName = 'COD_FAB'
      Origin = 'COD_FAB'
      Visible = False
    end
    object FDQ_PagamentoFabrica: TStringField
      FieldKind = fkLookup
      FieldName = 'Fabrica'
      LookupDataSet = FDT_Fabricas
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'COD_FAB'
      Size = 35
      Lookup = True
    end
  end
  object DS_Pagamentos: TDataSource
    DataSet = FDQ_Pagamento
    Left = 48
    Top = 80
  end
  object FDT_Fabricas: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = DM_Principal.FDConnection1
    UpdateOptions.UpdateTableName = 'FABRICA'
    TableName = 'FABRICA'
    Left = 176
    Top = 32
    object FDT_FabricasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDT_FabricasNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 80
    end
    object FDT_FabricasRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 80
    end
  end
end
