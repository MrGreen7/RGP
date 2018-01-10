unit U_Log;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Actions, FMX.ActnList, FMX.Types,
  FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit, FMX.EditBox, FMX.NumberBox,
  windows, ShellApi, FMX.platform.Win, FMX.Effects, IdHashMessageDigest;

type
  TLog = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    InnerGlowEffect1: TInnerGlowEffect;
    InnerGlowEffect2: TInnerGlowEffect;
    procedure Label1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Log: TLog;

implementation

uses
  U_Main, U_Ins, U_DataModule, Winapi.Messages;
{$R *.fmx}
{$R resources.RES}

function Decrypt(Str: string): string;
var
  Md5: TIdHashMessageDigest5;
  Hash: string;
begin
  Md5 := TIdHashMessageDigest5.Create;
  Hash := Md5.HashStringAsHex(Str);
  Result := Hash;
end;

function LoadResourceFont(const ResourceName, FontName: string): boolean;
var
  // MyResStream: tResourceStream;
  // FontsCount: integer;
  // hFont: tHandle;
  Path: string;
  // isIxists: boolean;
begin
  Path := GetEnvironmentVariable('AppData');
  CreateDir(Path + '\App_Soft_RGB');
  Path := (Path + '\App_Soft_RGB');
  { MyResStream := tResourceStream.Create(hInstance, 'MY_FONT', Pchar('MYNICEF'));
    isIxists := fileexists(Path + '\Fawf.ttf');
    if (isIxists = False) then
    Begin
    MyResStream.SavetoFile(Path + '\Fawf.ttf');
    // ShowMessage('Don''t but not anymore ! ');
    End;
    // ShowMessage('Exists');
    AddFontResource(Pchar(Path + '\Fawf.ttf'));
    MyResStream.Free;
    SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0); }
end;

procedure TLog.Button1Click(Sender: TObject);
var
  HexPass: string;
  Msg: Integer;
begin
  if ((Edit1.Text = '') or (Edit2.Text = '')) then
  begin
    if ((Edit1.Text = '') and (Edit2.Text = '')) then
    begin
      MessageDlg('š''il vous plaît saisir votre pseudo et mot de pass', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      InnerGlowEffect1.Enabled := True;
      InnerGlowEffect2.Enabled := True;
      Edit1.SetFocus;
    end
    else if (Edit1.Text = '') then
    begin
      MessageDlg('š''il vous plaît saisir votre pseudo', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      InnerGlowEffect1.Enabled := True;
      Edit1.SetFocus;
    end
    else
    begin
      MessageDlg('š''il vous plaît saisir votre mot de pass', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      InnerGlowEffect2.Enabled := True;
      Edit2.SetFocus;
    end;
  end
  else
  begin
    HexPass := Decrypt(Edit2.Text);
    with DataModule1.FDQuery1 do
    begin
      Active := False;
      SQL.Text := ('SELECT * FROM User');
      Active := True;
      if not (Locate('Pseudo;Mot_de_pass', VarArrayOf([Edit1.Text, HexPass]), [])) then
      begin
        InnerGlowEffect1.Enabled := True;
        InnerGlowEffect2.Enabled := True;
        Msg := MessageDlg('Pseudo ou Mot de pass est incorrect !', TMsgDlgType.mtError, [TMsgDlgBtn.mbRetry, TMsgDlgBtn.mbCancel], 0);
        if (Msg = mrRetry) then
        begin
          Edit1.Text := '';
          Edit2.Text := '';
          Edit1.SetFocus;
          InnerGlowEffect1.Enabled := False;
          InnerGlowEffect2.Enabled := False;
        end
        else
          ModalResult := mrCancel;
      end
      else
      begin
        ShowMessage('Bienvenu Mr.'+Edit1.Text);
        ModalResult := mrOk;
      end;
    end;
  end;
end;

procedure TLog.Edit1Change(Sender: TObject);
begin
  InnerGlowEffect1.Enabled := False;
end;

procedure TLog.Edit2Change(Sender: TObject);
begin
  InnerGlowEffect1.Enabled := False;
end;

procedure TLog.Label1Click(Sender: TObject);
var
  InsDlg: TIns;
begin
  InsDlg := TIns.Create(self);
  if (InsDlg.ShowModal = mrCancel) then
    InsDlg.Close;
end;

procedure TLog.FormCreate(Sender: TObject);
begin
  LoadResourceFont('MY_FONT', 'MYNICEF');
end;

end.

