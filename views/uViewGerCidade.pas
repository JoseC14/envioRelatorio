unit uViewGerCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, bsSkinCtrls, Vcl.StdCtrls, Vcl.Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Vcl.ComCtrls;

type
  TfrmGerCidade = class(TForm)
    Label1: TLabel;
    edPesquisa: TbsSkinEdit;
    btnPesquisar: TbsSkinSpeedButton;
    btnAlterar: TbsSkinSpeedButton;
    btnDeletar: TbsSkinSpeedButton;
    edCidade: TbsSkinEdit;
    tbcidade: TDBGrid;
    dsCidades: TDataSource;
    sqlCidade: TFDQuery;
    Label2: TLabel;
    cbFilNome: TbsSkinComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure tbcidadeCellClick(Column: TColumn);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbFilNomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerCidade: TfrmGerCidade;

implementation

{$R *.dfm}

uses uConexao, uCIdadeDao, uViewGerEmail;

procedure TfrmGerCidade.cbFilNomeChange(Sender: TObject);
begin
  dsCidades.DataSet.Filtered := False;
  if cbFilNome.ItemIndex = 0 then
  begin
    sqlCidade.Close;
    sqlCidade.Open('SELECT * FROM tb_cidade ORDER BY nome ASC');

  end
  else if cbFilNome.ItemIndex = 1 then
  begin
    sqlCidade.Close;
    sqlCidade.Open('SELECT * FROM tb_cidade ORDER BY nome DESC');
  end
  else
  begin
    dsCidades.DataSet.Filter := 'nome LIKE '+QuotedStr(cbFilNome.Text+'%');
  end;

  dsCidades.DataSet.Filtered := True;

end;

procedure TfrmGerCidade.btnAlterarClick(Sender: TObject);
begin
  if edCidade.Text<>'' then
  begin
    uCidadeDao.CidadeDao.alterarCidade(edCidade.Text,tbcidade.Fields[0].Value);
    ShowMessage('Cidade Alterada com Sucesso');
    tbcidade.DataSource.DataSet.Refresh;
  end
  else
  begin
    ShowMessage('Nenhuma cidade selecionada');
  end;

end;

procedure TfrmGerCidade.btnDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Deletar?','Aten??o!', MB_OK+MB_OKCANCEL)=1 then
  begin
    uCidadeDao.CidadeDao.deletarCidade(tbcidade.Fields[0].Value);
    uCidadeDao.CidadeDao.deletarEmail(tbcidade.Fields[0].Value);
    tbcidade.DataSource.DataSet.Refresh;
    uViewGerEmail.frmGerEmail.tbemails.DataSource.DataSet.Refresh;
    ShowMessage('Cidade Deletada com Sucesso');
  end;

end;

procedure TfrmGerCidade.btnPesquisarClick(Sender: TObject);
var
i: Integer;
begin
  sqlCidade.Open('SELECT * FROM tb_cidade WHERE nome LIKE ''%'+edPesquisa.Text+'%''');
end;

procedure TfrmGerCidade.FormCreate(Sender: TObject);
begin
  edCidade.Enabled := False;
end;

procedure TfrmGerCidade.tbcidadeCellClick(Column: TColumn);
begin
   if tbcidade.Fields[1].Value = null then
   begin
     ShowMessage('Nenhuma cidade cadastrada');
   end
   else
   begin
    edCidade.Text := tbcidade.Fields[1].Value;
    edCidade.Enabled := True;
   end;

end;

end.
