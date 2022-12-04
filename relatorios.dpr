program relatorios;

uses
  Vcl.Forms,
  uViewPrincipal in 'views\uViewPrincipal.pas' {frmPrincipal},
  uVIewEnvioRelatorio in 'views\uVIewEnvioRelatorio.pas' {frmEnvioEmail},
  uVIewCadCIdade in 'views\uVIewCadCIdade.pas' {frmCadCIdade},
  uVIewCadEmail in 'views\uVIewCadEmail.pas' {frmCadEmail},
  uViewGerCidade in 'views\uViewGerCidade.pas' {frmGerCidade},
  uViewGerEmail in 'views\uViewGerEmail.pas' {frmGerEmail},
  uVIewHistorico in 'views\uVIewHistorico.pas' {frmHistorico},
  uConexao in 'dao\uConexao.pas' {Conexao: TDataModule},
  uCIdadeDao in 'dao\uCIdadeDao.pas' {CidadeDao: TDataModule},
  uEmailDao in 'dao\uEmailDao.pas' {EmailDao: TDataModule},
  uHistoricoDao in 'dao\uHistoricoDao.pas' {HistoricoDao: TDataModule},
  uViewConfiguracoes in 'views\uViewConfiguracoes.pas' {frmConfiguracoes},
  uVIewLogin in 'views\uVIewLogin.pas' {frmLogin},
  uUserDao in 'dao\uUserDao.pas' {userDao: TDataModule},
  uViewCadUser in 'views\uViewCadUser.pas' {frmCadUser},
  uViewGerarRelatorio in 'views\uViewGerarRelatorio.pas' {frmGerarRelatorio},
  Crypto in 'Crypto.pas',
  uViewReport in 'views\uViewReport.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmEnvioEmail, frmEnvioEmail);
  Application.CreateForm(TfrmCadCIdade, frmCadCIdade);
  Application.CreateForm(TfrmCadEmail, frmCadEmail);
  Application.CreateForm(TfrmGerCidade, frmGerCidade);
  Application.CreateForm(TfrmGerEmail, frmGerEmail);
  Application.CreateForm(TfrmHistorico, frmHistorico);
  Application.CreateForm(TCidadeDao, CidadeDao);
  Application.CreateForm(TEmailDao, EmailDao);
  Application.CreateForm(THistoricoDao, HistoricoDao);
  Application.CreateForm(TfrmConfiguracoes, frmConfiguracoes);
  Application.CreateForm(TuserDao, userDao);
  Application.CreateForm(TfrmCadUser, frmCadUser);
  Application.CreateForm(TfrmGerarRelatorio, frmGerarRelatorio);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
