unit CyrptoPascal;

interface

uses
  System.NetEncoding, SysUtils, Classes;

type

  ICyrptoPascal = interface
    function DecodeBase64(AText: string): string;
    function EncodeBase64(AText: string): string;
  end;

  TCyrptoPascal = class(TInterfacedObject, ICyrptoPascal)
    function DecodeBase64(AText: string): string;
    function EncodeBase64(AText: string): string;
  end;

implementation

{ TCyrptoPascal }

function TCyrptoPascal.DecodeBase64(AText: string): string;
begin
  DecodeBase64 := TNetEncoding.Base64.Decode(AText);
end;

function TCyrptoPascal.EncodeBase64(AText: string): string;
begin
  EncodeBase64 := TNetEncoding.Base64.Encode(AText);
end;

end.
