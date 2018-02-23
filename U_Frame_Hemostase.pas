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
    Edit1: TEdit;
    Label16: TLabel;
    L_Left: TLayout;
    L_Right: TLayout;
    Hemos_ComboBox1: TComboBox;
    Hemos_ComboBox2: TComboBox;
    Hemos_Edit4: TEdit;
    Hemos_Edit1: TEdit;
    Label23: TLabel;
    Hemos_Label1: TLabel;
    Hemos_Label2: TLabel;
    Hemos_Edit2: TEdit;
    Label24: TLabel;
    Hemos_Edit3: TEdit;
    Label25: TLabel;
    Hemos_Label3: TLabel;
    procedure Hemos_Edit1Change(Sender: TObject);
    procedure Hemos_Edit2Change(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure Clear;
    procedure Insert;
    procedure Edit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

Uses
  U_DataModule;
{$R *.fmx}

procedure TFrame4.Clear;
begin
  Hemos_Edit1.Text := '';
  Hemos_Edit2.Text := '';
  Hemos_Edit3.Text := '';
  Hemos_Edit4.Text := '';
  Hemos_ComboBox1.ItemIndex := -1;
  Hemos_ComboBox2.ItemIndex := -1;
end;

procedure TFrame4.Insert;
begin
  With DataModule1.FDQuery1 do
  Begin
    FieldByName('').AsString := Hemos_Edit1.Text;
    FieldByName('').AsString := Hemos_Edit2.Text;
    FieldByName('').AsString := Hemos_Edit3.Text;
    FieldByName('').AsString := Hemos_Edit4.Text;
    if (Hemos_ComboBox1.ItemIndex <> -1) then
      FieldByName('').AsString := Hemos_Combobox1.Selected.Text;
    if (Hemos_ComboBox2.ItemIndex <> -1) then
      FieldByName('').AsString := Hemos_Combobox2.Selected.Text;
  End;
end;

procedure TFrame4.Edit;
begin
  With DataModule1.FDQuery1 do
  Begin
    FieldByName('').AsString := Hemos_Edit1.Text;
    FieldByName('').AsString := Hemos_Edit2.Text;
    FieldByName('').AsString := Hemos_Edit3.Text;
    FieldByName('').AsString := Hemos_Edit4.Text;
    if (Hemos_ComboBox1.ItemIndex <> -1) then
      FieldByName('').AsString := Hemos_Combobox1.Selected.Text;
    if (Hemos_ComboBox2.ItemIndex <> -1) then
      FieldByName('').AsString := Hemos_Combobox2.Selected.Text;
  End;
end;

procedure TFrame4.FrameResize(Sender: TObject);
begin
  L_Right.Width := GroupBox3.Width / 2;
  L_Left.Width := GroupBox3.Width / 2;
end;

procedure TFrame4.Hemos_Edit1Change(Sender: TObject);
begin
  if (Hemos_Edit1.Text <> '') then
    Hemos_ComboBox1.Enabled := True
  else
  begin
    Hemos_ComboBox1.Enabled := False;
    Hemos_ComboBox1.ItemIndex := -1;
  end;
end;

procedure TFrame4.Hemos_Edit2Change(Sender: TObject);
begin
  if (Hemos_Edit2.Text <> '') then
    Hemos_ComboBox2.Enabled := True
  else
  begin
    Hemos_ComboBox2.Enabled := False;
    Hemos_ComboBox2.ItemIndex := -1;
  end;
end;

end.
