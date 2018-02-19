unit U_Frame_Inf_Principale;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.DateTimeCtrls, FMX.Edit, FMX.Controls.Presentation,
  FMX.Layouts;

type
  TFrame1 = class(TFrame)
    ImageControl1: TImageControl;
    GroupBox_Info: TGroupBox;
    IP_Label1: TLabel;
    IP_Label2: TLabel;
    IP_Label3: TLabel;
    IP_Label4: TLabel;
    IP_Edit1: TEdit;
    IP_Edit2: TEdit;
    IP_DateEdit1: TDateEdit;
    IP_ComboBox1: TComboBox;
    IP_Label5: TLabel;
    IP_Label6: TLabel;
    IP_Label7: TLabel;
    IP_Label8: TLabel;
    IP_Edit3: TEdit;
    IP_Edit4: TEdit;
    IP_ComboBox2: TComboBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    IP_DateEdit2: TDateEdit;
    GroupBox_Liens: TGroupBox;
    L_Left: TLayout;
    L_Right: TLayout;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame1.FrameResize(Sender: TObject);
begin
  L_Left.Width := GroupBox_Info.Width / 2;
  L_Right.Width := GroupBox_Info.Width / 2;
end;

end.
