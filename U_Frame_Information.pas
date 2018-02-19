unit U_Frame_Information;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts;

type
  TFrame2 = class(TFrame)
    GroupBox1: TGroupBox;
    AC_Edit5: TEdit;
    AC_Label1: TLabel;
    AC_Label2: TLabel;
    AC_Label3: TLabel;
    AC_Label4: TLabel;
    AC_Edit6: TEdit;
    AC_Edit7: TEdit;
    AC_Label6: TLabel;
    AC_Label7: TLabel;
    AC_Edit8: TEdit;
    AC_Edit9: TEdit;
    AC_Label5: TLabel;
    AC_ComboBox3: TComboBox;
    AC_ComboBox4: TComboBox;
    GroupBox2: TGroupBox;
    ComboBox5: TComboBox;
    Label31: TLabel;
    L_Top: TLayout;
    L_Right: TLayout;
    L_Left: TLayout;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame2.FrameResize(Sender: TObject);
begin
  L_Left.Width := GroupBox1.Width / 2;
  L_Right.Width := GroupBox1.Width / 2;
end;

end.
