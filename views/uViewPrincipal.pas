unit uViewPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, BusinessSkinForm,
  Vcl.ExtCtrls, uVIewEnvioRelatorio, uVIewCadCIdade, uVIewCadEmail, uViewGerCidade,
  uViewGerEmail, uVIewHistorico, uViewConfiguracoes, uViewGerarRelatorio,
  uVIewLogin;

type
  TfrmPrincipal = class(TForm)
    bsSkinMainMenu1: TbsSkinMainMenu;
    EnviarEmail1: TMenuItem;
    Gerenciar1: TMenuItem;
    CIdades1: TMenuItem;
    Emails1: TMenuItem;
    Gerenciar2: TMenuItem;
    Cidade1: TMenuItem;
    Emails2: TMenuItem;
    Histrico1: TMenuItem;
    pTelaInterna: TPanel;
    Relatrios1: TMenuItem;
    Logout1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure CIdades1Click(Sender: TObject);
    procedure Emails1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Emails2Click(Sender: TObject);
    procedure EnviarEmail1Click(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmPrincipal: TfrmPrincipal;
  uViewEnvioRelatorio : TfrmEnvioEmail;
  uVIewCadCIdade      : TfrmCadCidade;
  uVIewCadEmail       : TfrmCadEmail;
  uViewGerCidade      : TfrmGerCidade;
  uViewGerEmail       : TfrmGerEmail;
  uVIewHistorico      : TfrmHistorico;
  uViewConfiguracoes  : TfrmConfiguracoes;
  uViewGerarRelatorio : TfrmGerarRelatorio;
  uViewLogin          : TfrmLogin;





implementation

{$R *.dfm}



procedure TfrmPrincipal.Cidade1Click(Sender: TObject);
begin
  uViewGerCidade := TfrmGerCidade.Create(Self);
  uViewGerCidade.Parent := pTelaInterna;
  uViewGerCidade.Align  := alClient;
  uViewGerCidade.Show;
end;

procedure TfrmPrincipal.CIdades1Click(Sender: TObject);
begin
  uViewCadCidade := TfrmCadCidade.Create(Self);
  uVIewCadCIdade.Parent := pTelaInterna;
  uVIewCadCIdade.Align  := alClient;
  uVIewCadCIdade.Show;
end;

procedure TfrmPrincipal.Configuraes1Click(Sender: TObject);
begin
  uViewConfiguracoes := TfrmConfiguracoes.Create(Self);
  uViewConfiguracoes.Parent := pTelaInterna;
  uViewConfiguracoes.Align  := alClient;
  uViewConfiguracoes.Show;
end;

procedure TfrmPrincipal.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmPrincipal.Emails1Click(Sender: TObject);
begin
  uViewCadEmail := TfrmCadEmail.Create(Self);
  uVIewCadEmail.Parent := pTelaInterna;
  uVIewCadEmail.Align  := alClient;
  uVIewCadEmail.Show;
end;

procedure TfrmPrincipal.Emails2Click(Sender: TObject);
begin
  uViewGerEmail := TfrmGerEmail.Create(Self);
  uViewGerEmail.Parent := pTelaInterna;
  uViewGerEmail.Align  := alClient;
  uViewGerEmail.Show;
end;

procedure TfrmPrincipal.EnviarEmail1Click(Sender: TObject);
begin
  uViewEnvioRelatorio := TfrmEnvioEmail.Create(Self);
  uViewEnvioRelatorio.Parent := pTelaInterna;
  uViewEnvioRelatorio.Align  := alClient;
  uViewEnvioRelatorio.Show;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

  uViewEnvioRelatorio := TfrmEnvioEmail.Create(Self);
  uViewEnvioRelatorio.Parent := pTelaInterna;
  uViewEnvioRelatorio.Align  := alClient;
  uViewEnvioRelatorio.Show;
end;

procedure TfrmPrincipal.Histrico1Click(Sender: TObject);
begin
  uViewHistorico        := TfrmHistorico.Create(Self);
  uVIewHistorico.Parent := pTelaInterna;
  uVIewHistorico.Align  := alClient;
  uVIewHistorico.Show;
end;

procedure TfrmPrincipal.Logout1Click(Sender: TObject);
begin

  uViewLogin                          := TfrmLogin.Create(Self);
  uViewLogin.Visible                  := True;
  uViewPrincipal.frmPrincipal.Visible := False;
end;

procedure TfrmPrincipal.Relatrios1Click(Sender: TObject);
begin
  uViewGerarRelatorio := TfrmGerarRelatorio.Create(Self);
  uViewGerarRelatorio.Parent := pTelaInterna;
  uViewGerarRelatorio.Align  := alClient;
  uVIewGerarRelatorio.Show;
end;

end.
