object DM_PesqPedPorRepresentada_e_PorRepresentante: TDM_PesqPedPorRepresentada_e_PorRepresentante
  OldCreateOrder = False
  Height = 541
  Width = 754
  object FDQ_Pesquisa: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    pedido.codigo,'
      '    pedido.numero,'
      '    pedido.oc,'
      '    pedido.data,'
      '    pedido.dataprograma,'
      '    clientes.nomefantasia,'
      '    clientes.razaosocial,'
      '    fabrica.razaosocial,'
      '    vendedor.nome,'
      '    pedido.total,'
      '    pedido.total_cipi'
      'from vendedor'
      
        '   right outer join pedido on (vendedor.codigo = pedido.codvende' +
        'dor)'
      
        '   left outer join clientes on (pedido.codcliente = clientes.cod' +
        'igo)'
      
        '   left outer join fabrica on (pedido.codfabrica = fabrica.codig' +
        'o)'
      'where '
      '   ('
      '      (pedido.data between :dt_ini and :dt_fim)'
      '   and '
      '      (pedido.codvendedor =:cod_vend)'
      '   and '
      '      (pedido.codfabrica =:cod_fab)'
      '   and '
      '      (pedido.tipo = '#39'PEDIDO'#39')'
      '   )'
      'order by pedido.data')
    Left = 72
    Top = 16
    ParamData = <
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
      end
      item
        Name = 'COD_VEND'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end
      item
        Name = 'COD_FAB'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_PesquisaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_PesquisaNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 20
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 80
    end
    object FDQ_PesquisaOC: TStringField
      DisplayLabel = 'Ordem de compra'
      DisplayWidth = 20
      FieldName = 'OC'
      Origin = 'OC'
      Size = 80
    end
    object FDQ_PesquisaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQ_PesquisaDATAPROGRAMA: TDateField
      DisplayLabel = 'Data de programa'#231#227'o'
      DisplayWidth = 15
      FieldName = 'DATAPROGRAMA'
      Origin = 'DATAPROGRAMA'
    end
    object FDQ_PesquisaNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 35
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 400
    end
    object FDQ_PesquisaRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 40
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 400
    end
    object FDQ_PesquisaRAZAOSOCIAL_1: TStringField
      DisplayLabel = 'Representada'
      DisplayWidth = 35
      FieldName = 'RAZAOSOCIAL_1'
      Origin = 'RAZAOSOCIAL'
      Size = 80
    end
    object FDQ_PesquisaNOME: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 25
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 400
    end
    object FDQ_PesquisaTOTAL: TBCDField
      DisplayLabel = 'Total S/IPI'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
    end
    object FDQ_PesquisaTOTAL_CIPI: TBCDField
      DisplayLabel = 'Total C/IPI'
      FieldName = 'TOTAL_CIPI'
      Origin = 'TOTAL_CIPI'
      Precision = 18
    end
  end
  object DS_Pesquisa: TDataSource
    DataSet = FDQ_Pesquisa
    Left = 72
    Top = 72
  end
  object FDQ_Vendedor: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    vendedor.codigo,'
      '    vendedor.nome'
      'from vendedor'
      'order by vendedor.nome')
    Left = 184
    Top = 16
    object FDQ_VendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_VendedorNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 400
    end
  end
  object DS_Vendedor: TDataSource
    DataSet = FDQ_Vendedor
    Left = 184
    Top = 72
  end
  object FDQ_Fabrica: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    fabrica.codigo,'
      '    fabrica.razaosocial'
      'from fabrica'
      'order by fabrica.razaosocial')
    Left = 288
    Top = 16
    object FDQ_FabricaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_FabricaRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 45
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 80
    end
  end
  object DS_Fabrica: TDataSource
    DataSet = FDQ_Fabrica
    Left = 288
    Top = 72
  end
end
