object userDao: TuserDao
  OldCreateOrder = False
  Height = 521
  Width = 641
  object sqlInserir: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      
        'INSERT INTO tb_user(usuario,senha,email,senhaemail) VALUES(:usua' +
        'rio,:senha,:email,:senhaemail)')
    Left = 168
    Top = 184
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHAEMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlLogin: TFDQuery
    Active = True
    Connection = Conexao.Conexao
    SQL.Strings = (
      
        'SELECT * FROM tb_user WHERE usuario = :usuario AND senha = :senh' +
        'a')
    Left = 240
    Top = 184
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlAlterar: TFDQuery
    SQL.Strings = (
      
        'UPDATE tb_user SET usuario = :usuario, email = :email, senhaemai' +
        'l = :senhaemail WHERE id = :id')
    Left = 296
    Top = 184
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHAEMAIL'
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
end
