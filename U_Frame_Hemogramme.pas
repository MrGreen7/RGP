unit U_Frame_Hemogramme;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Edit;

type
  TFrame3 = class(TFrame)
    L_Top: TLayout;
    L_Left: TLayout;
    L_Right: TLayout;
    Label32: TLabel;
    Hemog_Edit4: TEdit;
    Hemog_LabelEdit4: TLabel;
    Hemog_Label4: TLabel;
    Hemog_Label3: TLabel;
    Hemog_Edit3: TEdit;
    Hemog_LabelEdit3: TLabel;
    Hemog_Edit2: TEdit;
    Hemog_LabelEdit2: TLabel;
    Hemog_Label2: TLabel;
    Hemog_Label1: TLabel;
    Hemog_Edit1: TEdit;
    Hemog_LabelEdit1: TLabel;
    Hemog_Edit6: TEdit;
    Label19: TLabel;
    Hemog_Label6: TLabel;
    Hemog_Edit5: TEdit;
    Label18: TLabel;
    Hemog_Label5: TLabel;
    Hemog_Label7: TLabel;
    Hemog_Edit7: TEdit;
    Label20: TLabel;
    Hemog_Edit8: TEdit;
    Label21: TLabel;
    Hemog_Label8: TLabel;
    Layout_Frame3: TLayout;
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

procedure TFrame3.Clear;
begin
  Hemog_Edit1.Text := '';
  Hemog_Edit2.Text := '';
  Hemog_Edit3.Text := '';
  Hemog_Edit4.Text := '';
  Hemog_Edit5.Text := '';
  Hemog_Edit6.Text := '';
  Hemog_Edit7.Text := '';
  Hemog_Edit8.Text := '';
end;

procedure TFrame3.Insert;
begin
  With DataModule1.FDQuery1 do
  Begin
    FieldByName('Hematies').AsString := Hemog_Edit1.Text;
    FieldByName('Hemoglobine').AsString := Hemog_Edit2.Text;
    FieldByName('Hematocrite').AsString := Hemog_Edit3.Text;
    FieldByName('VGM').AsString := Hemog_Edit4.Text;
    FieldByName('TCMH').AsString := Hemog_Edit5.Text;
    FieldByName('CCMH').AsString := Hemog_Edit6.Text;
    FieldByName('leucocytes').AsString := Hemog_Edit7.Text;
    FieldByName('Reticulocytes').AsString := Hemog_Edit8.Text;
  End;
end;

procedure TFrame3.Edit;
begin

  With DataModule1.FDQuery1 do
  Begin
    FieldByName('Hematies').AsString := Hemog_Edit1.Text;
    FieldByName('Hemoglobine').AsString := Hemog_Edit2.Text;
    FieldByName('Hematocrite').AsString := Hemog_Edit3.Text;
    FieldByName('VGM').AsString := Hemog_Edit4.Text;
    FieldByName('TCMH').AsString := Hemog_Edit5.Text;
    FieldByName('CCMH').AsString := Hemog_Edit6.Text;
    FieldByName('leucocytes').AsString := Hemog_Edit7.Text;
    FieldByName('Reticulocytes').AsString := Hemog_Edit8.Text;
  End;
end;

procedure TFrame3.FrameResize(Sender: TObject);
begin
  L_Right.Width := Layout_Frame3.Width / 2;
  L_Left.Width := Layout_Frame3.Width / 2;
end;

end.
