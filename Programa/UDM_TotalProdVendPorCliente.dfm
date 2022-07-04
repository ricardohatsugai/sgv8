object DM_TotalProdVendPorCliente: TDM_TotalProdVendPorCliente
  OldCreateOrder = False
  Height = 627
  Width = 962
  object FDQ_Consulta: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    clientes.razaosocial,'
      '    itenspedido.codproduto,'
      '    sum( itenspedido.quant ) sum_of_quant'
      'from pedido'
      '   inner join clientes on (pedido.codcliente = clientes.codigo)'
      
        '   inner join itenspedido on (pedido.codigo = itenspedido.codped' +
        'ido)'
      'where '
      '   ('
      '      (pedido.data between :dtini and :dtfim)'
      '   and '
      '      (itenspedido.codproduto =:prod)'
      '   )'
      'group by clientes.razaosocial, itenspedido.codproduto'
      'order by 3 desc')
    Left = 96
    Top = 56
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end
      item
        Name = 'PROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_ConsultaRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 85
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 400
    end
    object FDQ_ConsultaCODPRODUTO: TIntegerField
      DisplayLabel = 'Id produto'
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
      Visible = False
    end
    object FDQ_ConsultaSUM_OF_QUANT: TBCDField
      DisplayLabel = 'Soma de quant.'
      FieldName = 'SUM_OF_QUANT'
      Origin = 'SUM_OF_QUANT'
      Precision = 18
    end
  end
  object DS_Consulta: TDataSource
    DataSet = FDQ_Consulta
    Left = 96
    Top = 128
  end
  object FDQ_Produto: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    p.codigo,'
      '    p.referencia,'
      '    p.descricao'
      'from produtos as p'
      'where '
      '      p.referencia like :ref '
      'order by p.referencia')
    Left = 232
    Top = 56
    ParamData = <
      item
        Name = 'REF'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
    object FDQ_ProdutoCODIGO: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ProdutoREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 40
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 80
    end
    object FDQ_ProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 45
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
  end
  object DS_Produto: TDataSource
    DataSet = FDQ_Produto
    Left = 232
    Top = 128
  end
  object FDQ_ProdutoPesq: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'Select p.codigo, p.referencia, p.descricao from produtos as p '
      'Where p.referencia like :ref '
      'order by p.referencia')
    Left = 368
    Top = 56
    ParamData = <
      item
        Name = 'REF'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = ''
      end>
    object FDQ_ProdutoPesqCODIGO: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ProdutoPesqREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 45
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 80
    end
    object FDQ_ProdutoPesqDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
  end
  object DS_ProdutoPesq: TDataSource
    DataSet = FDQ_ProdutoPesq
    Left = 368
    Top = 128
  end
end
