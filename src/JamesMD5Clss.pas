{
  MIT License

  Copyright (c) 2017-2018 Marcos Douglas B. Santos

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
}
unit JamesMD5Clss;

{$include James.inc}

interface

uses
  Classes, SysUtils,
  JamesData,
  JamesDataClss,
  {$ifdef FPC}
    JamesMD5FPC
  {$else}
    JamesMD5Delphi
  {$endif}
  ;

type
  TMD5Hash = TCMD5Hash;

  TMD5Stream = class sealed(TInterfacedObject, IDataStream)
  private
    FOrigin: IDataStream;
    function GetStream: IDataStream;
  public
    constructor Create(const Origin: IDataStream); reintroduce;
    class function New(const Origin: IDataStream): IDataStream;
    function Save(Stream: TStream): IDataStream; overload;
    function Save(const FileName: string): IDataStream; overload;
    function Save(Strings: TStrings): IDataStream; overload;
    function AsString: string;
    function Size: Int64;
  end;

implementation

{ TMD5Stream }

function TMD5Stream.GetStream: IDataStream;
begin
  Result := TDataStream.New(
    TMD5Hash.New(FOrigin.AsString).AsString
  );
end;

constructor TMD5Stream.Create(const Origin: IDataStream);
begin
  inherited Create;
  FOrigin := Origin;
end;

class function TMD5Stream.New(const Origin: IDataStream): IDataStream;
begin
  Result := Create(Origin);
end;

function TMD5Stream.Save(Stream: TStream): IDataStream;
begin
  Result := GetStream.Save(Stream);
end;

function TMD5Stream.Save(const FileName: string): IDataStream;
begin
  Result := GetStream.Save(FileName);
end;

function TMD5Stream.Save(Strings: TStrings): IDataStream;
begin
  Result := GetStream.Save(Strings);
end;

function TMD5Stream.AsString: string;
begin
  Result := GetStream.AsString;
end;

function TMD5Stream.Size: Int64;
begin
  Result := GetStream.Size;
end;

end.
