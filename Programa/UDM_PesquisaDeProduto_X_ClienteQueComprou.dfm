object DM_PesquisaDeProduto_X_ClienteQueComprou: TDM_PesquisaDeProduto_X_ClienteQueComprou
  OldCreateOrder = False
  Height = 567
  Width = 780
  object FDQ_Pesq_Prod_X_Cliente: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    produtos.codigo,'
      '    produtos.referencia,'
      '    produtos.descricao,'
      '    itenspedido.quant,'
      '    itenspedido.preco,'
      '    itenspedido.ipi,'
      '    itenspedido.total,'
      '    pedido.data,'
      '    clientes.nomefantasia,'
      '    clientes.razaosocial'
      'from produtos'
      
        '   inner join itenspedido on (produtos.codigo = itenspedido.codp' +
        'roduto)'
      '   inner join pedido on (itenspedido.codpedido = pedido.codigo)'
      '   inner join clientes on (pedido.codcliente = clientes.codigo)'
      'where '
      '   ('
      '      (itenspedido.codproduto =:cod_prod)'
      '   and '
      '      (pedido.data between :dt_ini and :dt_fim)'
      '   )'
      '   and'
      '       (pedido.tipo = '#39'PEDIDO'#39') '
      'order by pedido.data')
    Left = 80
    Top = 16
    ParamData = <
      item
        Name = 'COD_PROD'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'DT_INI'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
        Value = 0d
      end
      item
        Name = 'DT_FIM'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
        Value = 0d
      end>
    object FDQ_Pesq_Prod_X_ClienteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQ_Pesq_Prod_X_ClienteREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 35
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 80
    end
    object FDQ_Pesq_Prod_X_ClienteDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
    object FDQ_Pesq_Prod_X_ClienteQUANT: TBCDField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 20
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object FDQ_Pesq_Prod_X_ClientePRECO: TBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 20
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
    end
    object FDQ_Pesq_Prod_X_ClienteIPI: TBCDField
      DisplayWidth = 20
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
    end
    object FDQ_Pesq_Prod_X_ClienteTOTAL: TBCDField
      DisplayLabel = 'Total'
      DisplayWidth = 20
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
    end
    object FDQ_Pesq_Prod_X_ClienteDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 20
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQ_Pesq_Prod_X_ClienteNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 35
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 400
    end
    object FDQ_Pesq_Prod_X_ClienteRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 40
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 400
    end
  end
  object DSPesq_Prod_X_Cliente: TDataSource
    DataSet = FDQ_Pesq_Prod_X_Cliente
    Left = 80
    Top = 72
  end
  object FDQ_Produto: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    produtos.codigo,'
      '    produtos.codfabricante,'
      '    produtos.referencia,'
      '    produtos.descricao,'
      '    produtos.unidade'
      'from produtos'
      'where '
      '   ('
      '      (produtos.referencia like :ref)'
      '   )'
      'order by produtos.referencia')
    Left = 232
    Top = 16
    ParamData = <
      item
        Name = 'REF'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = ''
      end>
    object FDQ_ProdutoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ProdutoCODFABRICANTE: TStringField
      DisplayLabel = 'C'#243'd. do fabricante'
      DisplayWidth = 25
      FieldName = 'CODFABRICANTE'
      Origin = 'CODFABRICANTE'
      Size = 80
    end
    object FDQ_ProdutoREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 25
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 80
    end
    object FDQ_ProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
    object FDQ_ProdutoUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 10
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 50
    end
  end
  object DS_Produtos: TDataSource
    DataSet = FDQ_Produto
    Left = 232
    Top = 72
  end
end
