unit U_Frame_Hemostase;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
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
    Label22: TLabel;
    ComboBox1: TComboBox;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame4.FrameResize(Sender: TObject);
begin
  L_Right.Width := GroupBox3.Width / 2;
  L_Left.Width := GroupBox3.Width / 2;
end;

procedure TFrame4.Hemos_Edit1Change(Sender: TObject);
begin
  if (Hemos_Edit1.Text <> '') then
    Hemos_Combobox1.Enabled := True
  else
  begin
    Hemos_Combobox1.Enabled := False;
    Hemos_Combobox1.ItemIndex := -1;
  end;
end;

procedure TFrame4.Hemos_Edit2Change(Sender: TObject);
begin
  if (Hemos_Edit2.Text <> '') then
    Hemos_Combobox2.Enabled := True
  else
  begin
    Hemos_Combobox2.Enabled := False;
    Hemos_Combobox2.ItemIndex := -1;
  end;
end;
end.
