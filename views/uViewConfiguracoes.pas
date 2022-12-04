unit uViewConfiguracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, uEmailDao, Crypto, bsSkinCtrls,
  bsSkinBoxCtrls;

type
  TfrmConfiguracoes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lUsuario: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lSenha: TLabel;
    email: TLabel;
    lSenhaEmail: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    edUser: TEdit;
    edEmail: TEdit;
    btnAlterar: TSpeedButton;
    Label13: TLabel;
    dsUsuarios: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    usuario: TDBText;
    mail: TDBText;
    edSenhaEmail: TbsSkinPasswordEdit;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;
  Crypto          : Tcrypto;

implementation

{$R *.dfm}

uses uVIewEnvioRelatorio, uUserDao;

procedure TfrmConfiguracoes.btnAlterarClick(Sender: TObject);
begin
  if (edUser.Text<>'') AND (edSenhaEmail.Text<>'') AND (edEmail.Text<>'') then
  begin
    Crypto := TCrypto.Create;
    uUserDao.userDao.alterarUsuario(edUser.Text,edEmail.Text,Crypto.Criptografa(edSenhaEmail.Text,100),dsUsuarios.DataSet.FieldByName('id').Value);
    ShowMessage('Email de usuário Alterado com Sucesso');
    uViewEnvioRelatorio.frmEnvioEmail.dsUsers.DataSet.Refresh;
  end
  else
  begin
     ShowMessage('Campos obrigatórios não preenchidos');
  end;
  
end;

procedure TfrmConfiguracoes.FormShow(Sender: TObject);
begin
   Crypto := TCrypto.Create;
  edUser.Text       :=  uVIewEnvioRelatorio.frmEnvioEmail.dsUsers.DataSet.FieldByName('usuario').AsString ;
  edEmail.Text      :=  uVIewEnvioRelatorio.frmEnvioEmail.dsUsers.DataSet.FieldByName('email').AsString ;
  edSenhaEmail.Text := uVIewEnvioRelatorio.frmEnvioEmail.dsUsers.DataSet.FieldByName('senhaemail').AsString ;
end;

end.
