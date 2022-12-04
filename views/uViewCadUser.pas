unit uViewCadUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Crypto;

type
  TfrmCadUser = class(TForm)
    edUser: TEdit;
    Label12: TLabel;
    Label10: TLabel;
    edEmail: TEdit;
    Label8: TLabel;
    edSenhaEmail: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUser: TfrmCadUser;
  Crypto : TCrypto;

implementation

{$R *.dfm}

uses uUserDao;

procedure TfrmCadUser.Label1Click(Sender: TObject);
begin
 ShowMessage('V� para o gerenciamento da sua conta google, clique em Seguran�a,'+
 ' depois fa�a a verifica��o em duas etapas, depois de feito isso clique em senhas'+
 ' de app e gere uma nova senha. Copie e cole essa senha no campo de senha de endere�o de email');
end;

procedure TfrmCadUser.SpeedButton1Click(Sender: TObject);
begin
  if (edUser.Text<>'') AND (edEmail.Text<>'') AND (edSenhaEmail.Text<>'') then
  begin
    Crypto :=  TCrypto.Create;
    uUserDao.userDao.inserirUsuario(edUser.Text,edEmail.Text,Crypto.Criptografa(edSenhaEmail.Text,100));
    ShowMessage('Usuario Cadastrado com Sucesso');
    Close;
  end
  else
  begin
     ShowMessage('Campos obrigat�rios n�o preenchidos');
  end;


end;

end.
