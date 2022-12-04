object CidadeDao: TCidadeDao
  OldCreateOrder = False
  Height = 459
  Width = 683
  object sqlInserir: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      'INSERT INTO tb_cidade(nome) VALUES(:nome)')
    Left = 264
    Top = 192
    ParamData = <
      item
        Name = 'NOME'
        ParamType = ptInput
      end>
  end
  object sqlAlterar: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      'UPDATE tb_cidade SET nome = :nome WHERE id = :id')
    Left = 336
    Top = 192
    ParamData = <
      item
        Name = 'NOME'
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
      'DELETE FROM tb_cidade WHERE id = :id')
    Left = 400
    Top = 192
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlDeletarEmaik: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      
        'DELETE FROM tb_mail WHERE idcidade IN(SELECT * FROM tb_cidade WH' +
        'ERE id = :id)')
    Left = 472
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
