unit uEmailDao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TEmailDao = class(TDataModule)
    sqlInserir: TFDQuery;
    sqlAlterar: TFDQuery;
    sqlDeletar: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure inserirEmail(idcidade : Integer ; orgao, email : String);
    procedure alterarEmail(email : String; id : Integer);
    procedure deletarEmail(id : Integer);
  end;

var
  EmailDao: TEmailDao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uConexao;

{$R *.dfm}

{ TEmailDao }

procedure TEmailDao.alterarEmail(email: String; id: Integer);
begin
  sqlAlterar.Params[0].AsString  := email;
  sqlAlterar.Params[1].AsInteger := id;

  sqlAlterar.ExecSQL;
end;





procedure TEmailDao.deletarEmail(id: Integer);
begin
  sqlDeletar.Params[0].AsInteger := id;
  sqlDeletar.ExecSQL;
end;

procedure TEmailDao.inserirEmail(idcidade: Integer; orgao, email: String);
begin
  sqlInserir.Params[0].AsInteger := idcidade;
  sqlInserir.Params[1].AsString  := orgao;
  sqlInserir.Params[2].AsString  := email;

  sqlInserir.ExecSQL;
end;

end.
