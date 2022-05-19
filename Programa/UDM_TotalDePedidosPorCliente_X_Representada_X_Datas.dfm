object DM_TotalDePedidosPorCliente_X_Representada_X_Datas: TDM_TotalDePedidosPorCliente_X_Representada_X_Datas
  OldCreateOrder = False
  Height = 531
  Width = 752
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
      '    clientes.endereco,'
      '    clientes.bairro,'
      '    clientes.numero,'
      '    cidade.cidade,'
      '    estado.estado,'
      '    clientes.cep,'
      '    clientes.contatos,'
      '    fabrica.razaosocial,'
      '    pedido.total,'
      '    pedido.total_cipi'
      'from pedido'
      '   inner join clientes on (pedido.codcliente = clientes.codigo)'
      '   inner join cidade on (clientes.codcidade = cidade.codigo)'
      '   inner join estado on (cidade.codestado = estado.codigo)'
      '   inner join fabrica on (pedido.codfabrica = fabrica.codigo)'
      'where '
      '   ('
      '      (pedido.data between :dt_ini and :dt_fim)'
      '   and '
      '      (pedido.codcliente =:cod_cli)'
      '   and '
      '      (pedido.codfabrica =:cod_fab)'
      '   and '
      '      (pedido.tipo = '#39'PEDIDO'#39')'
      '   )'
      'order by pedido.data')
    Left = 48
    Top = 24
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
        Name = 'COD_CLI'
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
      DisplayLabel = 'Data Prog.'
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
    object FDQ_PesquisaENDERECO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 40
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 400
    end
    object FDQ_PesquisaBAIRRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      DisplayWidth = 25
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_PesquisaNUMERO_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 15
      FieldName = 'NUMERO_1'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQ_PesquisaCIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      DisplayWidth = 35
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_PesquisaESTADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object FDQ_PesquisaCEP: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 20
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQ_PesquisaCONTATOS: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contatos'
      DisplayWidth = 25
      FieldName = 'CONTATOS'
      Origin = 'CONTATOS'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_PesquisaRAZAOSOCIAL_1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'F'#225'brica'
      DisplayWidth = 35
      FieldName = 'RAZAOSOCIAL_1'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_PesquisaTOTAL: TBCDField
      DisplayLabel = 'Total s/ipi'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = 'R$ ###,##0.0000'
      Precision = 18
    end
    object FDQ_PesquisaTOTAL_CIPI: TBCDField
      DisplayLabel = 'Total c/ipi'
      FieldName = 'TOTAL_CIPI'
      Origin = 'TOTAL_CIPI'
      DisplayFormat = 'R$ ###,##0.0000'
      Precision = 18
    end
  end
  object DS_Pesquisa: TDataSource
    DataSet = FDQ_Pesquisa
    Left = 48
    Top = 80
  end
  object FDQ_Cliente: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    clientes.codigo,'
      '    clientes.nomefantasia,'
      '    clientes.razaosocial,'
      '    clientes.cgc,'
      '    clientes.inscricao,'
      '    clientes.endereco,'
      '    clientes.bairro,'
      '    clientes.numero,'
      '    cidade.cidade,'
      '    estado.estado,'
      '    clientes.cep,'
      '    clientes.contatos'
      'from clientes'
      '   inner join cidade on (clientes.codcidade = cidade.codigo)'
      '   inner join estado on (cidade.codestado = estado.codigo)'
      'where '
      '   ('
      '      (clientes.razaosocial like :nome)'
      '   )'
      'order by clientes.razaosocial')
    Left = 168
    Top = 24
    ParamData = <
      item
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 400
        Value = ''
      end>
    object FDQ_ClienteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ClienteNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 40
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 400
    end
    object FDQ_ClienteRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o social'
      DisplayWidth = 45
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 400
    end
    object FDQ_ClienteCGC: TStringField
      DisplayWidth = 25
      FieldName = 'CGC'
      Origin = 'CGC'
      Size = 80
    end
    object FDQ_ClienteINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 25
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      Size = 80
    end
    object FDQ_ClienteENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 40
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 400
    end
    object FDQ_ClienteBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 35
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 80
    end
    object FDQ_ClienteNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 20
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object FDQ_ClienteCIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      DisplayWidth = 35
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object FDQ_ClienteESTADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object FDQ_ClienteCEP: TStringField
      DisplayLabel = 'Cep'
      DisplayWidth = 20
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 50
    end
    object FDQ_ClienteCONTATOS: TStringField
      DisplayLabel = 'Contatos'
      DisplayWidth = 35
      FieldName = 'CONTATOS'
      Origin = 'CONTATOS'
      Size = 80
    end
  end
  object DS_Cliente: TDataSource
    DataSet = FDQ_Cliente
    Left = 168
    Top = 80
  end
  object FDQ_Fabricas: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    fabrica.codigo,'
      '    fabrica.nomefantasia,'
      '    fabrica.razaosocial,'
      '    fabrica.cgc,'
      '    fabrica.inscricao'
      'from fabrica'
      'order by fabrica.razaosocial')
    Left = 272
    Top = 24
    object FDQ_FabricasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_FabricasNOMEFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 40
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 80
    end
    object FDQ_FabricasRAZAOSOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 45
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 80
    end
    object FDQ_FabricasCGC: TStringField
      DisplayWidth = 25
      FieldName = 'CGC'
      Origin = 'CGC'
      Size = 80
    end
    object FDQ_FabricasINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 25
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      Size = 80
    end
  end
  object DS_Fabricas: TDataSource
    DataSet = FDQ_Fabricas
    Left = 272
    Top = 80
  end
end
