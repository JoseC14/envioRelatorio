unit Crypto;


interface
uses SysUtils;
  type
  TCrypto = class
    private

    public
    function AsciiToInt(Caracter: Char): Integer;
    Function Criptografa(texto:string;chave:integer):String;
    Function DesCriptografa(texto:string;chave:integer):String;
  end;
implementation


{ TCrypto }

{ TCrypto }

function TCrypto.AsciiToInt(Caracter: Char): Integer;
var
  i: Integer;
begin
  i := 32;
  while i < 255 do begin
    if Chr(i) = Caracter then
      Break;
    i := i + 1;
  end;
  Result := i;
end;

function TCrypto.Criptografa(texto: string; chave: integer): String;
var
  cont:integer;
  retorno:string;

begin
     if (trim(texto)=EmptyStr) or (chave=0) then begin
    result:=texto;
  end else begin
    retorno:='';
    for cont:=1 to length(texto) do begin
      retorno:=retorno+chr(asciitoint(texto[cont])+chave);
    end;
    result:=retorno;
  end;
end;

function TCrypto.DesCriptografa(texto: string; chave: integer): String;
var
  cont:integer;
  retorno:string;
begin
   if (trim(texto)=EmptyStr) or (chave=0) then begin
    result:=texto;
  end else begin
    retorno:='';
    for cont:=1 to length(texto) do begin
      retorno:=retorno+chr(asciitoint(texto[cont])-chave);
    end;
    result:=retorno;
  end;
end;

end.
