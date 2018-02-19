unit U_Frame_Hemogramme;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame3.FrameResize(Sender: TObject);
begin
  L_Right.Width := Layout_Frame3.Width / 2;
  L_Left.Width := Layout_Frame3.Width / 2;
end;

end.
