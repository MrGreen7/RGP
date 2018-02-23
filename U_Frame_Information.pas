unit U_Frame_Information;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts;

type
  TFrame2 = class(TFrame)
    GroupBox1: TGroupBox;
    AC_Edit1: TEdit;
    AC_Label1: TLabel;
    GroupBox2: TGroupBox;
    AC_ComboBox3: TComboBox;
    Label31: TLabel;
    L_Top_1: TLayout;
    L_Top_2: TLayout;
    L_Right_2: TLayout;
    AC_Label5: TLabel;
    AC_ComboBox2: TComboBox;
    L_Left_2: TLayout;
    AC_Label2: TLabel;
    AC_ComboBox1: TComboBox;
    L_Top_3: TLayout;
    L_Left_3: TLayout;
    AC_Edit2: TEdit;
    AC_Label3: TLabel;
    L_Right_3: TLayout;
    AC_Label6: TLabel;
    AC_Edit4: TEdit;
    L_Top_4: TLayout;
    L_Left_4: TLayout;
    AC_Edit3: TEdit;
    AC_Label4: TLabel;
    L_Right_4: TLayout;
    AC_Label7: TLabel;
    AC_Edit5: TEdit;
    procedure WiliyaLoad(const Combo: TComboBox);
    procedure CommuneLoad(const Edit: TEdit; const Combo: TComboBox);
    procedure Insert();
    procedure Edit();
    procedure Clear();
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

Uses
  U_DataModule;
{$R *.fmx}

procedure TFrame2.WiliyaLoad(const Combo: TComboBox);
begin
  // Open Alg
  with DataModule1.FDQ_Wilaya do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := ('SELECT Nom FROM wilayas');
    Active := True;
    while not Eof do
    begin
      Combo.Items.Add(Fields.Fields[0].AsString);
      Next;
    end;
    SQL.Clear;
    Active := False;
  end;
end;

procedure TFrame2.CommuneLoad(const Edit: TEdit; const Combo: TComboBox);
var
  Code_P: string;
begin
  Code_P := Edit.Text; // Edit_Code_Wiliya
  Combo.Items.Clear; // Combobox3
  with DataModule1.FDQ_Commune do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := ('SELECT Nom FROM communes WHERE `Code_Wilaya`="' +
      Code_P + '"');
    Active := True;
    while not Eof do
    begin
      Combo.Items.Add(Fields.Fields[0].AsString); // Combobox3
      Next;
    end;
    SQL.Clear;
    Active := False;
  end;
end;

procedure TFrame2.Insert;
begin
  with DataModule1.FDQuery1 do
  Begin
    FieldByName('Adresse').AsString := AC_Edit1.Text;
    FieldByName('Telephone').AsString := AC_Edit2.Text;
    FieldByName('Email').AsString := AC_Edit3.Text;
    FieldByName('Mobile').AsString := AC_Edit4.Text;
    FieldByName('Fax').AsString := AC_Edit5.Text;
    if (AC_ComboBox1.ItemIndex <> -1) then
      FieldByName('Wilaya').AsString := AC_ComboBox1.Selected.Text;
    if (AC_ComboBox2.ItemIndex <> -1) then
      FieldByName('Commune').AsString := AC_ComboBox2.Selected.Text;
    if (AC_ComboBox3.ItemIndex <> -1) then
      FieldByName('Groupage').AsString := AC_ComboBox3.Selected.Text;
  End;
end;

procedure TFrame2.Edit;
begin
  with DataModule1.FDQuery1 do
  Begin
    FieldByName('Adresse').AsString := AC_Edit1.Text;
    FieldByName('Telephone').AsString := AC_Edit2.Text;
    FieldByName('Email').AsString := AC_Edit3.Text;
    FieldByName('Mobile').AsString := AC_Edit4.Text;
    FieldByName('Fax').AsString := AC_Edit5.Text;
    if (AC_ComboBox1.ItemIndex <> -1) then
      FieldByName('Wilaya').AsString := AC_ComboBox1.Selected.Text;
    if (AC_ComboBox2.ItemIndex <> -1) then
      FieldByName('Commune').AsString := AC_ComboBox2.Selected.Text;
    if (AC_ComboBox3.ItemIndex <> -1) then
      FieldByName('Groupage').AsString := AC_ComboBox3.Selected.Text;
  End;
end;

procedure TFrame2.Clear;
Begin
  AC_Edit1.Text := '';
  AC_Edit2.Text := '';
  AC_Edit3.Text := '';
  AC_Edit4.Text := '';
  AC_Edit5.Text := '';
  AC_ComboBox1.ItemIndex := -1;
  AC_ComboBox2.ItemIndex := -1;
  AC_ComboBox3.ItemIndex := -1;
End;

procedure TFrame2.FrameResize(Sender: TObject);
begin
  // Align The Tops
  L_Top_1.Height := GroupBox1.Height / 4;
  L_Top_2.Height := GroupBox1.Height / 4;
  L_Top_3.Height := GroupBox1.Height / 4;
  L_Top_4.Height := GroupBox1.Height / 4;

  // Aline The Right and Left
  L_Left_2.Width := L_Top_2.Width / 2;
  L_Right_2.Width := L_Top_2.Width / 2;

  L_Left_3.Width := L_Top_3.Width / 2;
  L_Right_3.Width := L_Top_3.Width / 2;

  L_Left_4.Width := L_Top_4.Width / 2;
  L_Right_4.Width := L_Top_4.Width / 2;
end;

end.
