object DM_Listagem_de_pedidos: TDM_Listagem_de_pedidos
  OldCreateOrder = False
  Height = 551
  Width = 766
  object FDQ_ListagemDePedidos: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    pedido.codigo,'
      '    pedido.numero,'
      '    pedido.oc,'
      '    pedido.data,'
      '    pedido.dataprograma,'
      '    pedido.codcliente,'
      '    pedido.codfabrica,'
      '    pedido.codpag,'
      '    pedido.codvendedor,'
      '    pedido.tipo,'
      '    pedido.total,'
      '    pedido.total_cipi'
      'from pedido'
      'where '
      '   ('
      '      (pedido.data between :dataini and :datafim)'
      '   )'
      'order by pedido.data')
    Left = 64
    Top = 24
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end>
    object FDQ_ListagemDePedidosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object FDQ_ListagemDePedidosNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 15
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ReadOnly = True
      Size = 80
    end
    object FDQ_ListagemDePedidosOC: TStringField
      DisplayWidth = 15
      FieldName = 'OC'
      Origin = 'OC'
      ReadOnly = True
      Size = 80
    end
    object FDQ_ListagemDePedidosDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
      ReadOnly = True
    end
    object FDQ_ListagemDePedidosDATAPROGRAMA: TDateField
      DisplayLabel = 'Data de programa'#231#227'o'
      FieldName = 'DATAPROGRAMA'
      Origin = 'DATAPROGRAMA'
      ReadOnly = True
    end
    object FDQ_ListagemDePedidosCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      ReadOnly = True
      Visible = False
    end
    object FDQ_ListagemDePedidosCLIENTE_LOOKUP: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLIENTE_LOOKUP'
      LookupDataSet = FDQ_Cliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'CODCLIENTE'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object FDQ_ListagemDePedidosCODFABRICA: TIntegerField
      DisplayLabel = 'C'#243'd. Representada'
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      ReadOnly = True
      Visible = False
    end
    object FDQ_ListagemDePedidosFABRICA_LOOKUP: TStringField
      DisplayLabel = 'Representada'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'FABRICA_LOOKUP'
      LookupDataSet = FDQ_Fabrica
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'CODFABRICA'
      ReadOnly = True
      Size = 30
      Lookup = True
    end
    object FDQ_ListagemDePedidosCODPAG: TIntegerField
      DisplayLabel = 'C'#243'd. Pag.'
      FieldName = 'CODPAG'
      Origin = 'CODPAG'
      ReadOnly = True
      Visible = False
    end
    object FDQ_ListagemDePedidosPAGAMENTO_LOOKUP: TStringField
      DisplayLabel = 'Condi'#231#227'o de pagamento'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'PAGAMENTO_LOOKUP'
      LookupDataSet = FDQ_Pagamento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PAGAMENTO'
      KeyFields = 'CODPAG'
      ReadOnly = True
      Size = 30
      Lookup = True
    end
    object FDQ_ListagemDePedidosCODVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'CODVENDEDOR'
      Origin = 'CODVENDEDOR'
      ReadOnly = True
      Visible = False
    end
    object FDQ_ListagemDePedidosVENDEDOR_LOOKUP: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'VENDEDOR_LOOKUP'
      LookupDataSet = FDQ_Vendedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      ReadOnly = True
      Size = 30
      Lookup = True
    end
    object FDQ_ListagemDePedidosTIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ReadOnly = True
      Size = 100
    end
    object FDQ_ListagemDePedidosTOTAL: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.0000'
      Precision = 18
    end
    object FDQ_ListagemDePedidosTOTAL_CIPI: TBCDField
      DisplayLabel = 'Total C/IPI'
      FieldName = 'TOTAL_CIPI'
      Origin = 'TOTAL_CIPI'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.0000'
      Precision = 18
    end
  end
  object FDQ_Cliente: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    clientes.codigo,'
      '    clientes.razaosocial'
      'from clientes'
      'order by clientes.razaosocial')
    Left = 216
    Top = 24
    object FDQ_ClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ClienteRAZAOSOCIAL: TStringField
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
      '    fabrica.razaosocial'
      'from fabrica')
    Left = 320
    Top = 24
    object FDQ_FabricaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
      '    pagamento.codigo,'
      '    pagamento.pagamento'
      'from pagamento'
      'order by pagamento.pagamento')
    Left = 432
    Top = 24
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
  end
  object FDQ_Vendedor: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    vendedor.codigo,'
      '    vendedor.nome'
      'from vendedor'
      'order by vendedor.nome')
    Left = 544
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
  object DS_ListagemDePedidos: TDataSource
    DataSet = FDQ_ListagemDePedidos
    Left = 64
    Top = 88
  end
  object FDQ_SomaTotal_Fabricas_pedidos: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    fabrica.razaosocial,'
      '    sum( pedido.total ) sum_of_total,'
      '    sum( pedido.total_cipi ) sum_of_total_cipi'
      'from pedido'
      '   inner join fabrica on (pedido.codfabrica = fabrica.codigo)'
      'where '
      '   ('
      '      (pedido.codfabrica =:cod_fabrica)'
      '   and '
      '      (pedido.data between :dt_ini and :dt_fim)'
      '   and'
      '      (pedido.tipo = '#39'PEDIDO'#39')'
      '   )'
      'group by fabrica.razaosocial')
    Left = 136
    Top = 184
    ParamData = <
      item
        Name = 'COD_FABRICA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'DT_INI'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end
      item
        Name = 'DT_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end>
    object FDQ_SomaTotal_Fabricas_pedidosRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 80
    end
    object FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL: TBCDField
      DisplayLabel = 'Total S/IPI'
      FieldName = 'SUM_OF_TOTAL'
      Origin = 'SUM_OF_TOTAL'
      Precision = 18
    end
    object FDQ_SomaTotal_Fabricas_pedidosSUM_OF_TOTAL_CIPI: TBCDField
      DisplayLabel = 'Total C/IPI'
      FieldName = 'SUM_OF_TOTAL_CIPI'
      Origin = 'SUM_OF_TOTAL_CIPI'
      Precision = 18
    end
  end
end
