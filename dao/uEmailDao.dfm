object EmailDao: TEmailDao
  OldCreateOrder = False
  Height = 419
  Width = 647
  object sqlInserir: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      
        'INSERT INTO tb_mails(idcidade,orgao,email) VALUES(:idcidade,:org' +
        'ao,:email)')
    Left = 176
    Top = 192
    ParamData = <
      item
        Name = 'IDCIDADE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ORGAO'
        ParamType = ptInput
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlAlterar: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      'UPDATE tb_mails SET email = :email WHERE id = :id ')
    Left = 256
    Top = 192
    ParamData = <
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlDeletar: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      'DELETE FROM tb_mails WHERE id = :id')
    Left = 328
    Top = 192
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
