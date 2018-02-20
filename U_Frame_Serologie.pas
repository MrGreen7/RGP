unit U_Frame_Serologie;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.TabControl, FMX.Layouts;

type
  TFrame5 = class(TFrame)
    TabControl1: TTabControl;
    TabItem8: TTabItem;
    GroupBox6: TGroupBox;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox7: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox8: TGroupBox;
    CheckBox4: TCheckBox;
    GroupBox9: TGroupBox;
    CheckBox5: TCheckBox;
    TabItem9: TTabItem;
    GroupBox16: TGroupBox;
    GroupBox10: TGroupBox;
    CheckBox6: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    GroupBox13: TGroupBox;
    CheckBox10: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    GroupBox17: TGroupBox;
    GroupBox15: TGroupBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    Layout1: TLayout;
    GroupBox11: TGroupBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    GroupBox12: TGroupBox;
    CheckBox9: TCheckBox;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame5.FrameResize(Sender: TObject);
begin
    //Viral
  GroupBox6.Width := TabControl1.Width / 4;
  GroupBox7.Width := TabControl1.Width / 4;
  GroupBox8.Width := TabControl1.Width / 4;
  GroupBox9.Width := TabControl1.Width / 4;
  //Bact / Para
  GroupBox10.Width := GroupBox16.Width / 3;
  GroupBox11.Width := GroupBox16.Width / 3;
  Layout1.Width := GroupBox16.Width / 3;
  GroupBox11.Height := (Layout1.Height) / 2;
  GroupBox12.Height := (Layout1.Height) / 2;
end;

end.
