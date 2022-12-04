object HistoricoDao: THistoricoDao
  OldCreateOrder = False
  Height = 530
  Width = 691
  object sqlInserir: TFDQuery
    Connection = Conexao.Conexao
    FormatOptions.AssignedValues = [fvStrsTrim2Len]
    FormatOptions.StrsTrim2Len = True
    SQL.Strings = (
      
        'INSERT INTO tb_historico(cidade, orgao, tipo, idusuario) VALUES(' +
        ':cidade, :orgao, :tipo, :idusuario)')
    Left = 256
    Top = 232
    ParamData = <
      item
        Name = 'CIDADE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ORGAO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlDeletar: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      'DELETE FROM tb_historico WHERE id = :id')
    Left = 320
    Top = 232
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end
