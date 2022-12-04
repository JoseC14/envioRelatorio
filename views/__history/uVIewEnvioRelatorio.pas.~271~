unit uVIewEnvioRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, bsSkinBoxCtrls,
  bsSkinShellCtrls, bsSkinCtrls, bsdbctrls, Vcl.FileCtrl, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,  uEmailDao,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Vcl.ComCtrls,
  Crypto;

type
  TfrmEnvioEmail = class(TForm)
    Label1: TLabel;
    cbCidades: TbsSkinDBLookupComboBox;
    rgTipo: TbsSkinRadioGroup;
    fAnexo: TbsSkinSaveFileEdit;
    btnEnviarEmail: TbsSkinSpeedButton;
    sqlCidades: TFDQuery;
    dsCidades: TDataSource;
    sqlOrgaos: TFDQuery;
    cbOrgaos: TbsSkinDBLookupComboBox;
    dsOrgaos: TDataSource;
    dsUsers: TDataSource;
    sqlEmail: TFDQuery;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure cbCidadesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnvioEmail: TfrmEnvioEmail;
  uEmailDao    : TEmailDao;
  Crypto       : TCrypto;


implementation

uses
IdComponent,
IdTCPConnection,
IdTCPClient,
IdHTTP,
IdBaseComponent,
IdMessage,
IdExplicitTLSClientServerBase,
IdMessageClient,
IdSMTPBase,
IdSMTP,
IdIOHandler,
IdIOHandlerSocket,
IdIOHandlerStack,
IdSSL,
IdSSLOpenSSL,
IdAttachmentFile,
IdText,
uConexao, uHistoricoDao, uVIewHistorico, uUserDao;

{$R *.dfm}



procedure TfrmEnvioEmail.btnEnviarEmailClick(Sender: TObject);
var

  idMsg                : TIdMessage;
  IdText               : TIdText;
  idSMTP               : TIdSMTP;
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
begin

   uEmailDao := TEmailDao.Create(Self);
   //Configura os parâmetros necessários para SSL
  IdSSLIOHandlerSocket                        := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSSLIOHandlerSocket.SSLOptions.SSLVersions :=  [sslvSSLv2, sslvSSLv3, sslvTLSv1, sslvTLSv1,sslvTLSv1_1,sslvTLSv1_2] ;
  IdSSLIOHandlerSocket.SSLOptions.Mode        := sslmClient;
  sqlEmail.Close;
  sqlEmail.Params[0].AsInteger := cbCidades.KeyValue;
  sqlEmail.Params[1].AsString  := cbOrgaos.Text;

   sqlEmail.Open;
   if sqlEmail.IsEmpty then
   begin
     ShowMessage('SQL VAZIA');
   end;




  //Variável referente a mensagem
  idMsg                            := TIdMessage.Create(Self);
  idMsg.CharSet                    := 'utf-8';
  idMsg.Encoding                   := meMIME;
  idMsg.From.Name                  := 'Envio de Relatórios';
  idMsg.From.Address               := 'vitor.itarget@gmail.com';
  idMsg.Priority                   := mpNormal;
  idMsg.Subject                    := 'Envio de Relatórios';
  idMsg.Recipients.Add;
  idMsg.Recipients.EMailAddresses  := sqlEmail.FieldByName('email').AsString;
    //Variável do texto

   idText := TIdText.Create(idMsg.MessageParts);
   idText.Body.Add('SEGUE EM ANEXO O PDF, COM O(A) '+rgTipo.Items[rgTipo.ItemIndex]+' DO(A) '+ UpperCase(cbOrgaos.Text)+' DO MUNICÍPIO DE '+UpperCase(cbCidades.Text)+ ' CONTATO DO SUPORTE ITARGET TECNOLOGIA DA INFORMAÇÃO (85)98133-1008 QUALQUER DÚVIDA ENTRAR EM CONTATO');
   idText.ContentType := 'text/html; text/plain; charset=iso-8859-1';


      //Prepara o Servidor
      Crypto := TCrypto.Create;
      IdSMTP                           := TIdSMTP.Create(Self);
      IdSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS                    := utUseImplicitTLS;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Host                      := 'smtp.gmail.com';
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Port                      := 465;
      IdSMTP.Username                  := dsUsers.DataSet.FieldByName('email').AsString;
      IdSMTP.Password                  := Crypto.Descriptografa(dsUsers.DataSet.FieldByName('senhaemail').AsString,100);
      TIdSSLIOHandlerSocketBase(Self).PassThrough := True;
      IdSMTP.Connect;
      IdSMTP.Authenticate;

      TIdAttachmentFile.Create(idMsg.MessageParts, fAnexo.Text);

      //Se a conexão foi bem sucedida, envia a mensagem
      if IdSMTP.Connected then
      begin
        try
          IdSMTP.Send(idMsg);
          uHistoricoDao.HistoricoDao.inserirHistorico(cbCidades.Text, cbOrgaos.Text, rgTipo.Items[rgTipo.ItemIndex],dsUsers.DataSet.FieldByName('id').AsInteger);
          ShowMessage('E-mail Enviado com Sucesso');
          uViewHistorico.frmHistorico.tbhistorico.DataSource.DataSet.Refresh;
        except on E:Exception do
          begin
            ShowMessage('Erro ao tentar enviar: ' + E.Message);
          end;
        end;
      end;

        IdSMTP.Disconnect;

      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(idSMTP);

    end;





procedure TfrmEnvioEmail.cbCidadesChange(Sender: TObject);
begin
  if cbCidades.KeyValue <> Null then
  begin
  with sqlOrgaos do
  begin
    Close;
    Params[0].AsInteger := cbCidades.KeyValue;
    Open;
  end;
  end;
end;

end.
