unit uVIewCadCIdade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, bsSkinCtrls, Vcl.StdCtrls, Vcl.Mask,
  bsSkinBoxCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmCadCIdade = class(TForm)
    Label1: TLabel;
    edCidade: TbsSkinEdit;
    btnCadastrar: TbsSkinSpeedButton;
    sqlChecarCidade: TFDQuery;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCIdade: TfrmCadCIdade;

implementation

{$R *.dfm}

uses uCIdadeDao, uViewGerCidade, uVIewCadEmail, uVIewEnvioRelatorio,
  uViewGerEmail, uConexao;

procedure TfrmCadCIdade.btnCadastrarClick(Sender: TObject);
begin

  if edCidade.Text<>'' then
  begin
    sqlChecarCidade.Params[0].AsString := edCidade.Text;
    sqlChecarCidade.Open;

    if sqlChecarCidade.IsEmpty then
    begin

    uCidadeDao.CidadeDao.inserirCidade(edCidade.Text);
    uViewGerCidade.frmGerCidade.tbcidade.DataSource.DataSet.Refresh;
    uVIewCadEmail.frmCadEmail.sqlConsulta.Refresh;
    uVIewEnvioRelatorio.frmEnvioEmail.sqlCidades.Refresh;
    ShowMessage('Cidade Cadastrada com Sucesso!');
    end
    else
    begin
     ShowMessage('Cidade já está cadastrada!');
    end;



  end
  else
  begin
    ShowMessage('Campo não Preenchido!');
  end;

  end;


end.
