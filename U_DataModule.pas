unit U_DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.UITypes, FMX.Dialogs,
  FMX.Types, FMX.Controls;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDCommand1: TFDCommand;
    FDQuery1: TFDQuery;
    Windows10: TStyleBook;
    Windows10Grey: TStyleBook;
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

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
  Path: String;
  MyClass: TComponent;
begin
  Path := ExpandFileName(GetCurrentDir() + '\Data.db');
  FDConnection1.Params.Add('Database=' + Path);
  FDConnection1.Connected := True;
  
  try
    FDQuery1.Close;
    FDQuery1.SQL.Text:=('Select * From User');
    FDQuery1.Active:=True;
  Except
    on E: Exception do
    Begin
    FDQuery1.Close;
    try
      FDCommand1.CommandText.Text :=
        ('CREATE TABLE `User`(ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, Nom varchar(20), Pseudo varchar(10), Mot_de_pass varchar(12));');
      FDCommand1.Execute();
      except
        on E: Exception do
          end;
    End;
  end;
  With FDQuery1 do
  Begin
    SQL.Text := ('Select * From User');
    Active := True;
    Insert;
    FieldByName('Nom').AsString := ('Computer');
    FieldByName('Pseudo').AsString := ('admin');
    FieldByName('Mot_de_pass').AsString := ('admin');
    Post;
    Active := False;
  End;
end;

end.
