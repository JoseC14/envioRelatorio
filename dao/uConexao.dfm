object Conexao: TConexao
  OldCreateOrder = False
  Height = 465
  Width = 605
  object Conexao: TFDConnection
    Params.Strings = (
      'Server='
      'DriverID=PG')
    Left = 384
    Top = 328
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 'C:\'
    VendorLib = 'libpq.dll'
    Left = 384
    Top = 376
  end
end
