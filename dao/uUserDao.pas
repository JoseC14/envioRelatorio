unit uUserDao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, Vcl.Dialogs,FireDAC.Comp.Client;

type
  TuserDao = class(TDataModule)
    sqlInserir: TFDQuery;
    sqlLogin: TFDQuery;
    sqlAlterar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure inserirUsuario(usuario,email,senhaemail:String);
    procedure alterarUsuario(usuario,email,senhaemail : String; id : Integer);
    function Logar(usuario,senha : String) : Boolean;
  end;

var
  userDao: TuserDao;
 
 

implementation
{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Bcrypt, uConexao,IdHash;

{$R *.dfm}

{ TDataModule1 }

procedure TuserDao.alterarUsuario(usuario, email, senhaemail: String;
  id: Integer);
begin
  sqlAlterar.Params[0].AsString  := usuario;
  sqlAlterar.Params[1].AsString  := email;
  sqlAlterar.Params[2].AsString  := senhaemail;
  sqlAlterar.Params[3].AsInteger := id;

  sqlAlterar.ExecSQL;
end;

procedure TuserDao.inserirUsuario(usuario, email,
  senhaemail: String);

begin
   
  sqlInserir.Params[0].AsString := usuario;
  sqlInserir.Params[1].AsString := '1t4rg3t@rh247';
  sqlInserir.Params[2].AsString := email;
  sqlInserir.Params[3].AsString := senhaemail;

  sqlInserir.ExecSQL;
end;

function TuserDao.Logar(usuario, senha: String): Boolean;
begin
  sqlLogin.Close;
  sqlLogin.Params[0].AsString := usuario;
  sqlLogin.Params[1].AsString := senha;
  sqlLogin.Open();

  if sqlLogin.isEmpty = False then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
  
end;

end.