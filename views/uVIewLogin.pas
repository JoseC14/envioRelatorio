unit uVIewLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,Crypto,
  bsSkinCtrls, bsSkinBoxCtrls;

type
  TfrmLogin = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    edUser: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    edSenha: TbsSkinPasswordEdit;
    procedure Label1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  Crypto : TCrypto;

implementation

{$R *.dfm}

uses uViewCadUser, uUserDao, uViewPrincipal, Bcrypt, uVIewEnvioRelatorio;

procedure TfrmLogin.Label1Click(Sender: TObject);
begin
  uViewCadUser.frmCadUser.ShowModal;
end;

procedure TfrmLogin.SpeedButton1Click(Sender: TObject);
begin
  if (edUser.Text<>'') AND (edSenha.Text<>'') then
    begin
    if   uUserDao.userDao.Logar(edUser.Text,edSenha.Text) = True then
    begin
    uViewPrincipal.frmPrincipal.Show;
    Visible := False;
    end
    else
    begin
     ShowMessage('Usu�rio ou Senha Incorretos');
    end;
  end
  else
  begin
    ShowMessage('Campos obrigat�rios n�o preenchidos');
  end;

end;

end.
