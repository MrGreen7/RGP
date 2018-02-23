unit U_Frame_Hemostase;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.ScrollBox, FMX.Memo, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts;

type
  TFrame4 = class(TFrame)
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    L_topVs: TLayout;
    Label17: TLabel;
    Hemos_Edit4: TEdit;
    Label16: TLabel;
    Hemos_Edit1: TEdit;
    Label23: TLabel;
    Hemos_Edit2: TEdit;
    Label24: TLabel;
    Hemos_Edit3: TEdit;
    Label25: TLabel;
    Hemos_Label3: TLabel;
    Hemos_Label2: TLabel;
    Hemos_Label1: TLabel;
    Layout_Frame: TLayout;
    procedure FrameResize(Sender: TObject);
    procedure Clear;
    procedure Insert;
    procedure Edit;
    function IsSet: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

Uses
  U_DataModule;
{$R *.fmx}

function TFrame4.IsSet;
begin
  if ((Hemos_Edit1.Text = '') and (Hemos_Edit2.Text = '') and
    (Hemos_Edit3.Text = '') and (Hemos_Edit4.Text = '') and (Memo1.Text = ''))
  then
  begin
    Result := false;
  end
  else
    Result := True;

end;

procedure TFrame4.Clear;
begin
  Hemos_Edit1.Text := '';
  Hemos_Edit2.Text := '';
  Hemos_Edit3.Text := '';
  Hemos_Edit4.Text := '';
  Memo1.Text := '';
end;

procedure TFrame4.Insert;
begin
  With DataModule1.FDQuery1 do
  Begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'Select * From Hemostase_VS';
    Active := True;
    Insert;
    FieldByName('TS').AsString := Hemos_Edit1.Text;
    FieldByName('TCK').AsString := Hemos_Edit2.Text;
    FieldByName('TP').AsString := Hemos_Edit3.Text;
    FieldByName('VS').AsString := Hemos_Edit4.Text;
    FieldByName('Note').AsString := Memo1.Text;
    Post;
    Active := false;
    SQL.Clear;
  End;
end;

procedure TFrame4.Edit;
begin
  With DataModule1.FDQuery1 do
  Begin
    Active := false;
    SQL.Clear;
    SQL.Text := 'Select * From Hemostase-VS';
    Active := True;
    Edit;
    FieldByName('TS').AsString := Hemos_Edit1.Text;
    FieldByName('TCK').AsString := Hemos_Edit2.Text;
    FieldByName('TP').AsString := Hemos_Edit3.Text;
    FieldByName('VS').AsString := Hemos_Edit4.Text;
    FieldByName('Note').AsString := Memo1.Text;
    Post;
    Active := false;
    SQL.Clear;
  End;
end;

procedure TFrame4.FrameResize(Sender: TObject);
begin
  GroupBox3.Width := Layout_Frame.Width / 2;
  GroupBox4.Width := Layout_Frame.Width / 2;
end;

end.
