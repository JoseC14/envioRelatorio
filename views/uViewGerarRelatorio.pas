unit uViewGerarRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, bsSkinBoxCtrls, bsSkinCtrls, bsdbctrls,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmGerarRelatorio = class(TForm)
    Label3: TLabel;
    edDe: TMaskEdit;
    Label1: TLabel;
    edAte: TMaskEdit;
    Label2: TLabel;
    cbUsuario: TbsSkinDBLookupComboBox;
    Label4: TLabel;
    cbTIpo: TbsSkinComboBox;
    btnRelatorio: TbsSkinSpeedButton;
    sqlUsuario: TFDQuery;
    dsUsuario: TDataSource;
    Label5: TLabel;
    cbCidades: TbsSkinDBLookupComboBox;
    cbOrgao: TbsSkinComboBox;
    Label6: TLabel;
    sqlConsulta: TFDQuery;
    dsConsulta: TDataSource;
    sqlUsuarioid: TIntegerField;
    sqlUsuariousuario: TWideStringField;
    sqlUsuariosenha: TWideStringField;
    sqlUsuarioemail: TWideStringField;
    sqlUsuariosenhaemail: TWideStringField;
    dsRelatorio: TDataSource;
    sqlRelatorio: TFDQuery;
    sqlRelatorioid: TIntegerField;
    sqlRelatoriocidade: TWideStringField;
    sqlRelatorioorgao: TWideStringField;
    sqlRelatoriotipo: TWideStringField;
    sqlRelatoriodataenvio: TWideStringField;
    sqlRelatoriousuario: TWideStringField;
    sqlRelatorioid_1: TIntegerField;
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerarRelatorio: TfrmGerarRelatorio;

implementation

{$R *.dfm}

uses uConexao, uViewGerEmail, uVIewCadEmail, uViewReport, Unit1;

procedure TfrmGerarRelatorio.btnRelatorioClick(Sender: TObject);
var
num : char;
datainicio, datafim  : TDateTime ;
dataformatadainicio, dataformatadafim : String;
begin
 if (edDe.Text<>'  /  /    ') AND (edAte.Text<>'  /  /    ') then
  begin
    datainicio          := StrtoDate(edDe.Text);
    datafim             := StrtoDate(edate.Text);
    dataformatadainicio := FormatDateTime('YYYY-MM-DD',datainicio);
    dataformatadafim    := FormatDateTime('YYYY-MM-DD',datafim);
    ShowMessage(dataformatadainicio);

    sqlRelatorio.Close;
    sqlRelatorio.SQL.Clear;
    sqlRelatorio.SQL.Add('SELECT tb_historico.id,tb_historico.cidade,tb_historico.orgao,'+
      'tb_historico.tipo,tb_historico.dataenvio,tb_user.usuario, tb_user.id FROM tb_historico '+
      'INNER JOIN tb_user ON tb_historico.idusuario = tb_user.id  WHERE dataenvio '+
      'BETWEEN :datainicio AND :datafim');

     if cbUsuario.Text <>'' then
    begin
//      if (cbTIpo.ItemIndex<>-1) OR (cbCidades.KeyValue<>Null) OR (cbOrgao.ItemIndex<>-1) then
//      begin
//       sqlRelatorio.SQL.add(' AND');

      sqlRelatorio.SQL.add(' AND tb_user.id = :idusuario');
      sqlRelatorio.ParamByName('idusuario').AsInteger := cbUsuario.KeyValue;
      cbUsuario.KeyValue := Null;


    end;


    if cbCidades.Text<>'' then
    begin
//       if (cbTIpo.ItemIndex<>-1) OR (cbUsuario.KeyValue<>Null) OR (cbOrgao.ItemIndex<>-1) then
//      begin
//       sqlRelatorio.SQL.add(' AND');
//      end;
      sqlRelatorio.SQL.add(' AND tb_historico.cidade = :cidade');
      sqlRelatorio.ParamByName('cidade').AsString := cbCidades.Text;
      cbCidades.KeyValue := Null;

    end;

    if cbTIpo.ItemIndex<>-1 then
    begin
//         if (cbCidades.KeyValue<>Null) OR (cbUsuario.KeyValue<>Null) OR (cbOrgao.ItemIndex<>-1) then
//      begin
//       sqlRelatorio.SQL.add(' AND');
//      end;
      sqlRelatorio.SQL.add(' AND tb_historico.tipo = :tipo');
      sqlRelatorio.ParamByName('tipo').AsString := cbTIpo.Text;
      cbTipo.ItemIndex := -1;

    end;

    if cbOrgao.ItemIndex <> -1 then
    begin
//      if (cbCidades.KeyValue<>Null) OR (cbUsuario.KeyValue<>Null) OR (cbTIpo.ItemIndex<>-1) then
//      begin
//       sqlRelatorio.SQL.add(' AND');
//      end;
      sqlRelatorio.SQL.add(' AND tb_historico.orgao = :orgao');
      sqlRelatorio.ParamByName('orgao').AsString := cbOrgao.Text;
     cbOrgao.ItemIndex := -1;
    end;
    sqlRelatorio.SQL.Add(' ORDER BY dataenvio DESC');
    sqlRelatorio.ParamByName('datainicio').AsString := dataformatadainicio;
    sqlRelatorio.ParamByName('datafim').AsString    := dataformatadafim;
    sqlRelatorio.Open;
    if sqlRelatorio.IsEmpty then
    begin
      ShowMessage('Nenhum histórico encontrado!');
    end
    else
    begin
//      uViewReport.Form2.RLReport1.Preview;
      uViewReport.Form2.Relatorio.Preview;
    end;


    end
    else
    begin
      ShowMessage('Campos de data de inicio e data final não preenchidos');
    end;
  end;

end.
