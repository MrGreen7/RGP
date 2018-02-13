unit U_DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.UITypes, FMX.Dialogs, FMX.Types, FMX.Controls,
  IdHashMessageDigest;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDCommand1: TFDCommand;
    FDQuery1: TFDQuery;
    Windows10: TStyleBook;
    Windows10Grey: TStyleBook;
    FDConnection2: TFDConnection;
    FDQ_Wilaya: TFDQuery;
    FDQ_Commune: TFDQuery;
    FDCn_Entreprise: TFDConnection;
    FDQ_Entreprise: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
function Encryt(Str: string): string;
var
  Md5: TIdHashMessageDigest5;
  Hash: string;
begin
  Md5 := TIdHashMessageDigest5.Create;
  Hash := Md5.HashStringAsHex(Str);
  Result := Hash;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
  Path, PathInf, DirPath, HexPass, Db_Entrprise: string;
begin
  DirPath := GetEnvironmentVariable('AppData');
  CreateDir(DirPath + '\RGP_Data');
  Path := (DirPath + '\RGP_Data\Data.db');
  Db_Entrprise := ExpandFileName(GetCurrentDir() + '\Data\Entreprise.db');
  PathInf := ExpandFileName(GetCurrentDir() + '\Data\Alg_info.db');
  FDConnection1.Params.Add('Database=' + Path);
  FDConnection2.Params.Add('Database=' + PathInf);
  FDCn_Entreprise.Params.add('Database=' + Db_Entrprise);
  FDConnection1.Connected := True;
  FDConnection2.Connected := True;

  {---------------| Test Database and Tables |-------------------}
  //Account Database and Tabes
  try
    FDQuery1.Close;
    FDQuery1.SQL.Text := ('Select * From User');
    FDQuery1.Active := True;
  except
    on E: Exception do
    begin
      FDQuery1.Close;
      try
        FDCommand1.Connection:=FDConnection1;
        FDCommand1.CommandText.Text := ('CREATE TABLE `User`(ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, Nom varchar(20), Pseudo varchar(10), Mot_de_pass varchar(12));');
        FDCommand1.Execute();
        with FDQuery1 do
        begin
          //Anitialise the Admin account
          HexPass := Encryt('admin');        // Encrypt Admin password
          SQL.Text := ('Select * From User');
          Active := True;
          Insert;
          FieldByName('Nom').AsString := ('Computer');
          FieldByName('Pseudo').AsString := ('admin');
          FieldByName('Mot_de_pass').AsString := HexPass;
          Post;
          Active := False;
        end;
      except
        on E: Exception do

      end;
    end;
  end;

  // Entreprise Database and Tables

  try
    FDCn_Entreprise.Connected:=True;
    FDQ_Entreprise.Close;
    FDQ_Entreprise.SQL.Text := ('Select * From Entreprise');
    FDQ_Entreprise.Active := True;
  except
    on E: Exception do
    begin
      FDCommand1.Connection:=FDCn_Entreprise;
      FDCommand1.CommandText.Text:= ('CREATE TABLE `Entreprise`(ID_EntreP INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, Form_Juridique varchar(10), Libelle varchar(40), Libelle_Sec varchar(40), Wilaya varchar(20), Code_de_Wilaya Integer(3),Commune varchar(20),'+
                                    ' Code_Postal Integer(7), Adresse varchar(100), Telephone Integer(13), Mobile Integer(13), Fax Integer(13), Email varchar(30), Web varchar(40) );');
      FDCommand1.Execute();
    end;
  end;
  FDQ_Entreprise.SQL.Clear;
  FDQ_Entreprise.Active:=False;
  FDCn_Entreprise.Connected:=False;
end;

end.

