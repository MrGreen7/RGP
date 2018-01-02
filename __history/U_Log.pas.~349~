unit U_Log;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Actions, FMX.ActnList,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.EditBox, FMX.NumberBox, windows, ShellApi, FMX.Platform.Win;

type
  TLog = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Log: TLog;

implementation

Uses U_Main, U_Ins, U_DataModule, Winapi.Messages;
{$R *.fmx}
{$R resources.RES}

function LoadResourceFont(const ResourceName, FontName: string): boolean;
var
  MyResStream: tResourceStream;
  FontsCount: integer;
  hFont: tHandle;
  Path: String;
  isIxists: boolean;
begin
  Path := GetEnvironmentVariable('AppData');
  CreateDir(Path + '\App_Soft_RGB');
  Path := (Path + '\App_Soft_RGB');
  MyResStream := tResourceStream.Create(hInstance, 'MY_FONT', Pchar('MYNICEF'));
  isIxists := fileexists(Path + '\Fawf.ttf');
  if (isIxists = False) then
  Begin
    MyResStream.SavetoFile(Path + '\Fawf.ttf');
    // ShowMessage('Don''t but not anymore ! ');
  End;
  // ShowMessage('Exists');
  AddFontResource(Pchar(Path + '\Fawf.ttf'));
  MyResStream.Free;
  SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0);
end;

procedure TLog.Button1Click(Sender: TObject);
begin
  Main.Show;
end;

procedure TLog.Button2Click(Sender: TObject);
begin
  halt(0);
end;

procedure TLog.Label1Click(Sender: TObject);
begin
  Ins.Show;
end;

procedure TLog.FormCreate(Sender: TObject);
begin
  LoadResourceFont('MY_FONT', 'MYNICEF');
end;

end.
