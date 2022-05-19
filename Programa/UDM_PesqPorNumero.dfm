object DM_Pesq_PedidosPorNumero: TDM_Pesq_PedidosPorNumero
  OldCreateOrder = False
  Height = 525
  Width = 707
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
      '    clientes.cgc,'
      '    clientes.inscricao,'
      '    fabrica.razaosocial,'
      '    vendedor.nome,'
      '    pedido.total,'
      '    pedido.total_cipi'
      'from pedido'
      '   inner join clientes on (pedido.codcliente = clientes.codigo)'
      '   inner join vendedor on (pedido.codvendedor = vendedor.codigo)'
      '   inner join fabrica on (pedido.codfabrica = fabrica.codigo)'
      'where '
      '   ('
      '      (pedido.numero like :numero)'
      '   )'
      'order by pedido.data')
    Left = 64
    Top = 24
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = ''
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
      DisplayWidth = 15
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 80
    end
    object FDQ_PesquisaOC: TStringField
      DisplayWidth = 15
      FieldName = 'OC'
      Origin = 'OC'
      Size = 80
    end
    object FDQ_PesquisaDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 15
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQ_PesquisaDATAPROGRAMA: TDateField
      DisplayLabel = 'Data progr.'
      DisplayWidth = 15
      FieldName = 'DATAPROGRAMA'
      Origin = 'DATAPROGRAMA'
    end
    object FDQ_PesquisaNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 40
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 400
    end
    object FDQ_PesquisaRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 45
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 400
    end
    object FDQ_PesquisaCGC: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'CGC'
      Origin = 'CGC'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_PesquisaINSCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 20
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_PesquisaRAZAOSOCIAL_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Representada'
      DisplayWidth = 35
      FieldName = 'RAZAOSOCIAL_1'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_PesquisaNOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vendedor'
      DisplayWidth = 35
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
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
    Left = 64
    Top = 80
  end
  object FDQ_Pesq_OC: TFDQuery
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
      '    clientes.cgc,'
      '    clientes.inscricao,'
      '    fabrica.razaosocial,'
      '    vendedor.nome,'
      '    pedido.total,'
      '    pedido.total_cipi'
      'from pedido'
      '   inner join clientes on (pedido.codcliente = clientes.codigo)'
      '   inner join vendedor on (pedido.codvendedor = vendedor.codigo)'
      '   inner join fabrica on (pedido.codfabrica = fabrica.codigo)'
      'where '
      '   ('
      '      (pedido.oc like :oc)'
      '   )'
      'order by pedido.data')
    Left = 176
    Top = 24
    ParamData = <
      item
        Name = 'OC'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
    object FDQ_Pesq_OCCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_Pesq_OCNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 20
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 80
    end
    object FDQ_Pesq_OCOC: TStringField
      DisplayWidth = 15
      FieldName = 'OC'
      Origin = 'OC'
      Size = 80
    end
    object FDQ_Pesq_OCDATA: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 15
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQ_Pesq_OCDATAPROGRAMA: TDateField
      DisplayLabel = 'Data prog.'
      FieldName = 'DATAPROGRAMA'
      Origin = 'DATAPROGRAMA'
    end
    object FDQ_Pesq_OCNOMEFANTASIA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 40
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 400
    end
    object FDQ_Pesq_OCRAZAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Raz'#227'o social'
      DisplayWidth = 45
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 400
    end
    object FDQ_Pesq_OCCGC: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'CGC'
      Origin = 'CGC'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_Pesq_OCINSCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 20
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_Pesq_OCRAZAOSOCIAL_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Representada'
      DisplayWidth = 40
      FieldName = 'RAZAOSOCIAL_1'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_Pesq_OCNOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vendedor'
      DisplayWidth = 35
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 400
    end
    object FDQ_Pesq_OCTOTAL: TBCDField
      DisplayLabel = 'Total S/IPI'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
    end
    object FDQ_Pesq_OCTOTAL_CIPI: TBCDField
      DisplayLabel = 'Total C/IPI'
      FieldName = 'TOTAL_CIPI'
      Origin = 'TOTAL_CIPI'
      Precision = 18
    end
  end
  object DS_Pesq_OC: TDataSource
    DataSet = FDQ_Pesq_OC
    Left = 176
    Top = 80
  end
end
