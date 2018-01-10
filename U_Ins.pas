unit U_Ins;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FMX.Effects, IdHashMessageDigest;

type
  TIns = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit4: TEdit;
    InnerGlowEffect1: TInnerGlowEffect;
    InnerGlowEffect2: TInnerGlowEffect;
    InnerGlowEffect3: TInnerGlowEffect;
    InnerGlowEffect4: TInnerGlowEffect;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure SpeedButton2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure SpeedButton2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ins: TIns;

implementation

uses
  U_DataModule, FMX.Dialogs;
{$R *.fmx}

function Encrypt(Str: string): string;
var
  MD5: TIdHashMessageDigest5;
  Hash: string;
begin
  MD5 := TIdHashMessageDigest5.Create;
  Hash := MD5.HashStringAsHex(Str);
  Result := Hash;
end;

procedure TIns.Button1Click(Sender: TObject);
var
  HexPass: string;
begin
  if ((Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '')) then
  begin
    if ((Edit1.Text = '') and (Edit2.Text = '') and (Edit3.Text = '')) then
    begin
      MessageDlg('š''il vous plaît rempli les champs necessaire pour créen un compte', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      InnerGlowEffect1.Enabled := True;
      InnerGlowEffect2.Enabled := True;
      InnerGlowEffect3.Enabled := True;
      Edit1.SetFocus;
      if (Edit4.Text = '') then
        InnerGlowEffect4.Enabled := True;
    end
    else if (((Edit1.Text = '') and (Edit2.Text = '')) or ((Edit1.Text = '') and (Edit3.Text = ''))) then
    begin
      if (Edit2.Text = '') then
      begin
        MessageDlg('š''il vous plaît saisir votre nom et pseudo', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
        InnerGlowEffect1.Enabled := True;
        InnerGlowEffect2.Enabled := True;
        Edit1.SetFocus;
        if (Edit4.Text = '') then
          InnerGlowEffect4.Enabled := True;
      end
      else if (Edit3.Text = '') then
      begin
        MessageDlg('š''il vous plaît saisir votre nom et mot de pass', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
        InnerGlowEffect1.Enabled := True;
        InnerGlowEffect3.Enabled := True;
        Edit1.SetFocus;
        if (Edit4.Text = '') then
          InnerGlowEffect4.Enabled := True;
      end;
    end
    else if ((Edit2.Text = '') and (Edit3.Text = '')) then
    begin
      MessageDlg('š''il vous plaît saisir votre pseudo et mot de pass', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      InnerGlowEffect2.Enabled := True;
      InnerGlowEffect3.Enabled := True;
      Edit2.SetFocus;
      if (Edit4.Text = '') then
        InnerGlowEffect4.Enabled := True;
    end
    else if (Edit1.Text = '') then
    begin
      MessageDlg('s''il vous plaît entrer votre nom', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      InnerGlowEffect1.Enabled := True;
      Edit1.SetFocus;
      if (Edit4.Text = '') then
        InnerGlowEffect4.Enabled := True;
    end
    else if (Edit2.Text = '') then
    begin
      MessageDlg('s''il vous plaît entrer votre pseudo', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      InnerGlowEffect2.Enabled := True;
      Edit2.SetFocus;
      if (Edit4.Text = '') then
        InnerGlowEffect4.Enabled := True;
    end
    else if (Edit3.Text = '') then
    begin
      MessageDlg('s''il vous plaît entrer votre mot de pass', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      InnerGlowEffect3.Enabled := True;
      Edit3.SetFocus;
      if (Edit4.Text = '') then
        InnerGlowEffect4.Enabled := True;
    end;
  end
  else
  begin
    if (Edit3.Text <> Edit4.Text) then
    begin
      MessageDlg('Votre mot de pass ne pas Identique veuillez réessayer de nouveau', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbRetry], 0);
      Edit3.Text := '';
      Edit4.Text := '';
      InnerGlowEffect3.Enabled := True;
      InnerGlowEffect4.Enabled := True;
      Edit3.SetFocus;
    end
    else
    begin
      with DataModule1.FDQuery1 do
      begin
        Active := False;
        SQl.Text := ('SELECT * FROM User;');
        Active := True;
        Insert;
        FieldByName('Nom').AsString := Edit1.Text;
        FieldByName('Pseudo').AsString := Edit2.Text;
        begin
          HexPass := Encrypt(Edit3.Text);
          FieldByName('Mot_de_pass').AsString := HexPass;
        end;
        Post;
        Active := False;
        Button2.OnClick(Button2);
        MessageDlg('Votre compte a été engregistré', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbOK], 0);
        ModalResult:=mrCancel;
      end;
    end;
  end;
end;

procedure TIns.Button2Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  InnerGlowEffect1.Enabled := False;
  InnerGlowEffect2.Enabled := False;
  InnerGlowEffect3.Enabled := False;
  InnerGlowEffect4.Enabled := False;
end;

procedure TIns.Button3Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TIns.Edit1Change(Sender: TObject);
begin
  InnerGlowEffect1.Enabled := False;
end;

procedure TIns.Edit2Change(Sender: TObject);
begin
  InnerGlowEffect2.Enabled := False;
end;

procedure TIns.Edit3Change(Sender: TObject);
begin
  InnerGlowEffect3.Enabled := False;
end;

procedure TIns.Edit4Change(Sender: TObject);
begin
  InnerGlowEffect4.Enabled := False;
end;

procedure TIns.SpeedButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Edit3.Password := False;
end;

procedure TIns.SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Edit3.Password := True;
end;

procedure TIns.SpeedButton2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Edit4.Password := False;
end;

procedure TIns.SpeedButton2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Edit4.Password := True;
end;

end.

