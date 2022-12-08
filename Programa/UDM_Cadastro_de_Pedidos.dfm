object DM_Cadastro_de_Pedidos: TDM_Cadastro_de_Pedidos
  OldCreateOrder = False
  Height = 533
  Width = 853
  object FDQ_Pedido: TFDQuery
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    SQL.Strings = (
      'Select * from PEDIDO '
      'Where PEDIDO.CODIGO =:CODIGO')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_PedidoCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_PedidoNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 20
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_PedidoOC: TStringField
      DisplayLabel = 'Ordem de Compra'
      DisplayWidth = 20
      FieldName = 'OC'
      Origin = 'OC'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object FDQ_PedidoDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object FDQ_PedidoDATAPROGRAMA: TDateField
      DisplayLabel = 'Data de programa'#231#227'o'
      FieldName = 'DATAPROGRAMA'
      Origin = 'DATAPROGRAMA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object FDQ_PedidoCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_PedidoCLIENTE_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE_LOOKUP'
      LookupDataSet = FDQ_Cliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
    object FDQ_PedidoCODFABRICA: TIntegerField
      DisplayLabel = 'C'#243'd. Fabrica'
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_PedidoFABRICA_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'FABRICA_LOOKUP'
      LookupDataSet = FDQ_Fabrica
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'CODFABRICA'
      Size = 30
      Lookup = True
    end
    object FDQ_PedidoCODPAG: TIntegerField
      DisplayLabel = 'C'#243'd. Pagamento'
      FieldName = 'CODPAG'
      Origin = 'CODPAG'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_PedidoPAGAMENTO_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'PAGAMENTO_LOOKUP'
      LookupDataSet = FDQ_Pagamento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PAGAMENTO'
      KeyFields = 'CODPAG'
      Size = 30
      Lookup = True
    end
    object FDQ_PedidoCODTRANSPORTE: TIntegerField
      DisplayLabel = 'C'#243'd. Transportadora'
      FieldName = 'CODTRANSPORTE'
      Origin = 'CODTRANSPORTE'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_PedidoTRANSPORTE_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'TRANSPORTE_LOOKUP'
      LookupDataSet = FDQ_Transporte
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'CODTRANSPORTE'
      Size = 30
      Lookup = True
    end
    object FDQ_PedidoCODVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'CODVENDEDOR'
      Origin = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_PedidoVENDEDOR_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'VENDEDOR_LOOKUP'
      LookupDataSet = FDQ_Vendedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object FDQ_PedidoCOD_FRETE: TIntegerField
      DisplayLabel = 'C'#243'd. Frete'
      FieldName = 'COD_FRETE'
      Origin = 'COD_FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_PedidoFRETE_LOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'FRETE_LOOKUP'
      LookupDataSet = FDQ_Frete
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FRETE'
      KeyFields = 'COD_FRETE'
      Lookup = True
    end
    object FDQ_PedidoFRETE: TStringField
      DisplayLabel = 'Frete'
      DisplayWidth = 10
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQ_PedidoOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 800
    end
    object FDQ_PedidoCOD_FATURADO: TIntegerField
      DisplayLabel = 'C'#243'd. Faturado'
      FieldName = 'COD_FATURADO'
      Origin = 'COD_FATURADO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_PedidoFATURADO: TSmallintField
      DisplayLabel = 'Faturado'
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = [pfInUpdate]
    end
    object FDQ_PedidoTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object FDQ_PedidoTOTAL: TBCDField
      DisplayLabel = 'Total S/IPI'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'R$ ###,###,##0.00'
      Precision = 18
    end
    object FDQ_PedidoTOTAL_CIPI: TBCDField
      DisplayLabel = 'Total C/IPI'
      FieldName = 'TOTAL_CIPI'
      Origin = 'TOTAL_CIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'R$ ###,###,##0.00'
      Precision = 18
    end
    object FDQ_PedidoDESCONTO1: TBCDField
      DisplayLabel = 'Desconto 1'
      FieldName = 'DESCONTO1'
      Origin = 'DESCONTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_PedidoDESCONTO2: TBCDField
      DisplayLabel = 'Desconto 2'
      FieldName = 'DESCONTO2'
      Origin = 'DESCONTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_PedidoDESCONTO3: TBCDField
      DisplayLabel = 'Desconto 3'
      FieldName = 'DESCONTO3'
      Origin = 'DESCONTO3'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_PedidoDESCONTO4: TBCDField
      DisplayLabel = 'Desconto 4'
      FieldName = 'DESCONTO4'
      Origin = 'DESCONTO4'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_PedidoDESCONTO5: TBCDField
      DisplayLabel = 'Desconto 5'
      FieldName = 'DESCONTO5'
      Origin = 'DESCONTO5'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_PedidoDESCONTO6: TBCDField
      DisplayLabel = 'Desconto 6'
      FieldName = 'DESCONTO6'
      Origin = 'DESCONTO6'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_PedidoCOIFICIENTE: TBCDField
      DisplayLabel = 'Coificiente'
      FieldName = 'COIFICIENTE'
      Origin = 'COIFICIENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object FDQ_PedidoNF: TStringField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NF'
      Origin = 'NF'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
  end
  object FDQ_Itens: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'CODPEDIDO'
    MasterSource = DS_Pedido
    MasterFields = 'CODIGO'
    DetailFields = 'CODPEDIDO'
    Connection = DM_Principal.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'Select * from ITENSPEDIDO '
      'Where ITENSPEDIDO.CODPEDIDO =:CODIGO '
      'order by ITENSPEDIDO.ITEM')
    Left = 136
    Top = 24
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_ItensCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      Origin = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ItensCODPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ItensREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 30
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 400
    end
    object FDQ_ItensDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
    object FDQ_ItensUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      FixedChar = True
      Size = 10
    end
    object FDQ_ItensITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object FDQ_ItensCOD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object FDQ_ItensQUANT: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object FDQ_ItensPRECO: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = 'R$ ###,###,##0.00'
      Precision = 18
    end
    object FDQ_ItensIPI: TBCDField
      DisplayWidth = 10
      FieldName = 'IPI'
      Origin = 'IPI'
      DisplayFormat = '##.00 %'
      Precision = 18
    end
    object FDQ_ItensTOTAL: TBCDField
      DisplayLabel = 'Total S/IPI'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = 'R$ ###,###,##0.00'
      Precision = 18
    end
    object FDQ_ItensTOTAL_CIPI: TBCDField
      DisplayLabel = 'Total C/IPI'
      FieldName = 'TOTAL_CIPI'
      Origin = 'TOTAL_CIPI'
      DisplayFormat = 'R$ ###,###,##0.00'
      Precision = 18
    end
    object FDQ_ItensDESCONTO1: TBCDField
      DisplayLabel = 'Desconto 1'
      FieldName = 'DESCONTO1'
      Origin = 'DESCONTO1'
      Precision = 18
    end
    object FDQ_ItensDESCONTO2: TBCDField
      DisplayLabel = 'Desconto 2'
      FieldName = 'DESCONTO2'
      Origin = 'DESCONTO2'
      Precision = 18
    end
    object FDQ_ItensDESCONTO3: TBCDField
      DisplayLabel = 'Desconto 3'
      FieldName = 'DESCONTO3'
      Origin = 'DESCONTO3'
      Precision = 18
    end
    object FDQ_ItensDESCONTO4: TBCDField
      DisplayLabel = 'Desconto 4'
      FieldName = 'DESCONTO4'
      Origin = 'DESCONTO4'
      Precision = 18
    end
    object FDQ_ItensDESCONTO5: TBCDField
      DisplayLabel = 'Desconto 5'
      FieldName = 'DESCONTO5'
      Origin = 'DESCONTO5'
      Precision = 18
    end
    object FDQ_ItensDESCONTO6: TBCDField
      DisplayLabel = 'Desconto 6'
      FieldName = 'DESCONTO6'
      Origin = 'DESCONTO6'
      Precision = 18
    end
    object FDQ_ItensCOIFICIENTE: TBCDField
      DisplayLabel = 'Coificiente'
      FieldName = 'COIFICIENTE'
      Origin = 'COIFICIENTE'
      Precision = 18
    end
    object FDQ_ItensFATURADO: TStringField
      DisplayLabel = 'Faturado'
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
    end
    object FDQ_ItensNF: TStringField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 15
      FieldName = 'NF'
      Origin = 'NF'
      Size = 400
    end
    object FDQ_ItensCOD_FATURADO: TIntegerField
      DisplayLabel = 'C'#243'd. Faturado'
      FieldName = 'COD_FATURADO'
      Origin = 'COD_FATURADO'
    end
    object FDQ_Itensfat_sim_nao: TStringField
      DisplayLabel = 'FATURADO'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'fat_sim_nao'
      LookupDataSet = FDQ_SimNao_Faturado
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIM_NAO'
      KeyFields = 'COD_FATURADO'
      Size = 30
      Lookup = True
    end
    object FDQ_ItensQUANT_FAT: TBCDField
      DisplayLabel = 'Quant. Fat.'
      DisplayWidth = 10
      FieldName = 'QUANT_FAT'
      Origin = 'QUANT_FAT'
      Precision = 18
    end
    object FDQ_ItensDATA_FATURAMENTO: TDateField
      DisplayLabel = 'Data de Fat.'
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object FDQ_ItensCOD_BARRA: TStringField
      DisplayLabel = 'C'#243'd. de Barra'
      DisplayWidth = 25
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 400
    end
    object FDQ_ItensCLASS_FISCAL: TStringField
      DisplayLabel = 'Class. Fiscal'
      DisplayWidth = 30
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      Size = 400
    end
    object FDQ_ItensICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
    end
    object FDQ_ItensCTS: TStringField
      FieldName = 'CTS'
      Origin = 'CTS'
      Size = 400
    end
    object FDQ_ItensCOD_DO_CLIENTE: TStringField
      DisplayLabel = 'C'#243'd. do Cliente'
      DisplayWidth = 30
      FieldName = 'COD_DO_CLIENTE'
      Origin = 'COD_DO_CLIENTE'
      Size = 400
    end
  end
  object DS_Pedido: TDataSource
    DataSet = FDQ_Pedido
    Left = 56
    Top = 80
  end
  object DS_Itens: TDataSource
    DataSet = FDQ_Itens
    Left = 136
    Top = 80
  end
  object FDQ_Cliente: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    clientes.codigo,'
      '    clientes.nomefantasia,'
      '    clientes.razaosocial'
      'from clientes'
      'order by clientes.razaosocial')
    Left = 256
    Top = 24
    object FDQ_ClienteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ClienteNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 30
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 400
    end
    object FDQ_ClienteRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 40
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 400
    end
  end
  object FDQ_Fabrica: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    fabrica.codigo,'
      '    fabrica.nomefantasia,'
      '    fabrica.razaosocial'
      'from fabrica'
      'order by fabrica.razaosocial')
    Left = 336
    Top = 24
    object FDQ_FabricaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_FabricaNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 80
    end
    object FDQ_FabricaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 80
    end
  end
  object FDQ_Pagamento: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    p.codigo,'
      '    p.pagamento,'
      '    p.cod_fab'
      'from pagamento p '
      'where p.cod_fab =:cod '
      'order by p.pagamento')
    Left = 424
    Top = 24
    ParamData = <
      item
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_PagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_PagamentoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Size = 80
    end
    object FDQ_PagamentoCOD_FAB: TIntegerField
      FieldName = 'COD_FAB'
      Origin = 'COD_FAB'
    end
  end
  object FDQ_Transporte: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    transporte.codigo,'
      '    transporte.razaosocial'
      'from transporte'
      'order by transporte.razaosocial')
    Left = 536
    Top = 24
    object FDQ_TransporteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_TransporteRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 400
    end
  end
  object FDQ_Vendedor: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    vendedor.codigo,'
      '    vendedor.nome'
      'from vendedor'
      'order by vendedor.nome')
    Left = 648
    Top = 24
    object FDQ_VendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_VendedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 400
    end
  end
  object FDQ_Frete: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    frete.codigo,'
      '    frete.frete'
      'from frete'
      'order by frete.frete')
    Left = 760
    Top = 24
    object FDQ_FreteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_FreteFRETE: TStringField
      FieldName = 'FRETE'
      Origin = 'FRETE'
    end
  end
  object FDQ_Produtos: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    produtos.codigo,'
      '    produtos.codfabricante,'
      '    produtos.referencia,'
      '    produtos.descricao,'
      '    produtos.unidade,'
      '    produtos.classfiscal,'
      '    produtos.codbarra,'
      '    produtos.codfabrica,'
      '    produtos.embal_multiplo,'
      '    produtos.preco,'
      '    produtos.ipi,'
      '    produtos.cod_unidade,'
      '    produtos.cts,'
      '    produtos.icms,'
      '    produtos.st_goias,'
      '    produtos.st_brasilia,'
      '    produtos.comissao'
      'from produtos'
      'where '
      '   ('
      '      (produtos.referencia like :ref)'
      '   and '
      '      (produtos.codfabrica =:cod_fabrica)'
      '   )'
      'order by produtos.referencia')
    Left = 256
    Top = 80
    ParamData = <
      item
        Name = 'REF'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = ''
      end
      item
        Name = 'COD_FABRICA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_ProdutosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ProdutosCODFABRICANTE: TStringField
      DisplayLabel = 'C'#243'd. Fabricante'
      DisplayWidth = 20
      FieldName = 'CODFABRICANTE'
      Origin = 'CODFABRICANTE'
      Size = 80
    end
    object FDQ_ProdutosREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 30
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 80
    end
    object FDQ_ProdutosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
    object FDQ_ProdutosUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 15
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 50
    end
    object FDQ_ProdutosCLASSFISCAL: TStringField
      DisplayLabel = 'Class. Fiscal'
      DisplayWidth = 20
      FieldName = 'CLASSFISCAL'
      Origin = 'CLASSFISCAL'
      Size = 80
    end
    object FDQ_ProdutosCODBARRA: TStringField
      DisplayLabel = 'C'#243'd. Barra'
      DisplayWidth = 25
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
      Size = 400
    end
    object FDQ_ProdutosCODFABRICA: TIntegerField
      DisplayLabel = 'C'#243'd. Fabrica'
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
    end
    object FDQ_ProdutosEMBAL_MULTIPLO: TIntegerField
      DisplayLabel = 'Multiplo p/embalagem'
      FieldName = 'EMBAL_MULTIPLO'
      Origin = 'EMBAL_MULTIPLO'
    end
    object FDQ_ProdutosPRECO: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
    end
    object FDQ_ProdutosIPI: TBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
    end
    object FDQ_ProdutosCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'COD_UNIDADE'
    end
    object FDQ_ProdutosCTS: TStringField
      FieldName = 'CTS'
      Origin = 'CTS'
      Size = 30
    end
    object FDQ_ProdutosICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
    end
    object FDQ_ProdutosST_GOIAS: TBCDField
      FieldName = 'ST_GOIAS'
      Origin = 'ST_GOIAS'
      Precision = 18
    end
    object FDQ_ProdutosST_BRASILIA: TBCDField
      FieldName = 'ST_BRASILIA'
      Origin = 'ST_BRASILIA'
      Precision = 18
    end
    object FDQ_ProdutosCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
    end
  end
  object DS_Produtos: TDataSource
    DataSet = FDQ_Produtos
    Left = 256
    Top = 136
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 88
    Top = 144
  end
  object FDQ_SimNao_Faturado: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    sim_nao.codigo,'
      '    sim_nao.sim_nao'
      'from sim_nao')
    Left = 368
    Top = 80
    object FDQ_SimNao_FaturadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_SimNao_FaturadoSIM_NAO: TStringField
      FieldName = 'SIM_NAO'
      Origin = 'SIM_NAO'
      Size = 10
    end
  end
  object FDQ_CodDoCliente: TFDQuery
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    cod_prod_cliente.cod_cliente,'
      '    cod_prod_cliente.cod_produto,'
      '    cod_prod_cliente.cod_do_cliente'
      'from cod_prod_cliente'
      'where '
      '   ('
      '      (cod_prod_cliente.cod_cliente =:codcli)'
      '   and '
      '      (cod_prod_cliente.cod_produto =:codprod)'
      '   )')
    Left = 504
    Top = 80
    ParamData = <
      item
        Name = 'CODCLI'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODPROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_CodDoClienteCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object FDQ_CodDoClienteCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
    end
    object FDQ_CodDoClienteCOD_DO_CLIENTE: TStringField
      FieldName = 'COD_DO_CLIENTE'
      Origin = 'COD_DO_CLIENTE'
      Size = 50
    end
  end
  object FDQ_Pedido_Replica: TFDQuery
    CachedUpdates = True
    Connection = DM_Principal.FDConnection1
    SchemaAdapter = FDSchemaAdapter2
    SQL.Strings = (
      'Select * from PEDIDO '
      'Where PEDIDO.CODIGO =:CODIGO')
    Left = 80
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_Pedido_ReplicaCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_Pedido_ReplicaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 80
    end
    object FDQ_Pedido_ReplicaOC: TStringField
      FieldName = 'OC'
      Origin = 'OC'
      Size = 80
    end
    object FDQ_Pedido_ReplicaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQ_Pedido_ReplicaDATAPROGRAMA: TDateField
      FieldName = 'DATAPROGRAMA'
      Origin = 'DATAPROGRAMA'
    end
    object FDQ_Pedido_ReplicaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
    end
    object FDQ_Pedido_ReplicaCODFABRICA: TIntegerField
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
    end
    object FDQ_Pedido_ReplicaCODPAG: TIntegerField
      FieldName = 'CODPAG'
      Origin = 'CODPAG'
    end
    object FDQ_Pedido_ReplicaCODTRANSPORTE: TIntegerField
      FieldName = 'CODTRANSPORTE'
      Origin = 'CODTRANSPORTE'
    end
    object FDQ_Pedido_ReplicaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      Origin = 'CODVENDEDOR'
    end
    object FDQ_Pedido_ReplicaCOD_FRETE: TIntegerField
      FieldName = 'COD_FRETE'
      Origin = 'COD_FRETE'
    end
    object FDQ_Pedido_ReplicaFRETE: TStringField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Size = 50
    end
    object FDQ_Pedido_ReplicaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 800
    end
    object FDQ_Pedido_ReplicaCOD_FATURADO: TIntegerField
      FieldName = 'COD_FATURADO'
      Origin = 'COD_FATURADO'
    end
    object FDQ_Pedido_ReplicaFATURADO: TSmallintField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
    end
    object FDQ_Pedido_ReplicaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 100
    end
    object FDQ_Pedido_ReplicaTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaTOTAL_CIPI: TBCDField
      FieldName = 'TOTAL_CIPI'
      Origin = 'TOTAL_CIPI'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaDESCONTO1: TBCDField
      FieldName = 'DESCONTO1'
      Origin = 'DESCONTO1'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaDESCONTO2: TBCDField
      FieldName = 'DESCONTO2'
      Origin = 'DESCONTO2'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaDESCONTO3: TBCDField
      FieldName = 'DESCONTO3'
      Origin = 'DESCONTO3'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaDESCONTO4: TBCDField
      FieldName = 'DESCONTO4'
      Origin = 'DESCONTO4'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaDESCONTO5: TBCDField
      FieldName = 'DESCONTO5'
      Origin = 'DESCONTO5'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaDESCONTO6: TBCDField
      FieldName = 'DESCONTO6'
      Origin = 'DESCONTO6'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaCOIFICIENTE: TBCDField
      FieldName = 'COIFICIENTE'
      Origin = 'COIFICIENTE'
      Precision = 18
    end
    object FDQ_Pedido_ReplicaNF: TStringField
      FieldName = 'NF'
      Origin = 'NF'
      Size = 400
    end
  end
  object FDQ_Itens_Replica: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'CODPEDIDO'
    MasterSource = DS_Pedido_Replica
    MasterFields = 'CODIGO'
    DetailFields = 'CODPEDIDO'
    Connection = DM_Principal.FDConnection1
    SchemaAdapter = FDSchemaAdapter2
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'Select * from ITENSPEDIDO '
      'Where ITENSPEDIDO.CODPEDIDO =:CODIGO '
      'order by ITENSPEDIDO.ITEM')
    Left = 192
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_Itens_ReplicaCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      Origin = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_Itens_ReplicaCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_Itens_ReplicaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 400
    end
    object FDQ_Itens_ReplicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 400
    end
    object FDQ_Itens_ReplicaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      FixedChar = True
      Size = 10
    end
    object FDQ_Itens_ReplicaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object FDQ_Itens_ReplicaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object FDQ_Itens_ReplicaQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
    end
    object FDQ_Itens_ReplicaPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
    end
    object FDQ_Itens_ReplicaIPI: TBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
    end
    object FDQ_Itens_ReplicaTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
    end
    object FDQ_Itens_ReplicaTOTAL_CIPI: TBCDField
      FieldName = 'TOTAL_CIPI'
      Origin = 'TOTAL_CIPI'
      Precision = 18
    end
    object FDQ_Itens_ReplicaDESCONTO1: TBCDField
      FieldName = 'DESCONTO1'
      Origin = 'DESCONTO1'
      Precision = 18
    end
    object FDQ_Itens_ReplicaDESCONTO2: TBCDField
      FieldName = 'DESCONTO2'
      Origin = 'DESCONTO2'
      Precision = 18
    end
    object FDQ_Itens_ReplicaDESCONTO3: TBCDField
      FieldName = 'DESCONTO3'
      Origin = 'DESCONTO3'
      Precision = 18
    end
    object FDQ_Itens_ReplicaDESCONTO4: TBCDField
      FieldName = 'DESCONTO4'
      Origin = 'DESCONTO4'
      Precision = 18
    end
    object FDQ_Itens_ReplicaDESCONTO5: TBCDField
      FieldName = 'DESCONTO5'
      Origin = 'DESCONTO5'
      Precision = 18
    end
    object FDQ_Itens_ReplicaDESCONTO6: TBCDField
      FieldName = 'DESCONTO6'
      Origin = 'DESCONTO6'
      Precision = 18
    end
    object FDQ_Itens_ReplicaCOIFICIENTE: TBCDField
      FieldName = 'COIFICIENTE'
      Origin = 'COIFICIENTE'
      Precision = 18
    end
    object FDQ_Itens_ReplicaFATURADO: TStringField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
    end
    object FDQ_Itens_ReplicaNF: TStringField
      FieldName = 'NF'
      Origin = 'NF'
      Size = 400
    end
    object FDQ_Itens_ReplicaCOD_FATURADO: TIntegerField
      FieldName = 'COD_FATURADO'
      Origin = 'COD_FATURADO'
    end
    object FDQ_Itens_ReplicaQUANT_FAT: TBCDField
      FieldName = 'QUANT_FAT'
      Origin = 'QUANT_FAT'
      Precision = 18
    end
    object FDQ_Itens_ReplicaDATA_FATURAMENTO: TDateField
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
    end
    object FDQ_Itens_ReplicaCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 400
    end
    object FDQ_Itens_ReplicaCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      Size = 400
    end
    object FDQ_Itens_ReplicaICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
    end
    object FDQ_Itens_ReplicaCTS: TStringField
      FieldName = 'CTS'
      Origin = 'CTS'
      Size = 400
    end
    object FDQ_Itens_ReplicaCOD_DO_CLIENTE: TStringField
      FieldName = 'COD_DO_CLIENTE'
      Origin = 'COD_DO_CLIENTE'
      Size = 400
    end
  end
  object DS_Itens_Replica: TDataSource
    DataSet = FDQ_Itens_Replica
    Left = 192
    Top = 336
  end
  object DS_Pedido_Replica: TDataSource
    DataSet = FDQ_Pedido_Replica
    Left = 80
    Top = 336
  end
  object FDSchemaAdapter2: TFDSchemaAdapter
    Left = 136
    Top = 400
  end
end
