unit U_Frame_Ordonnance;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  System.Rtti, FMX.Grid.Style, FMX.Layouts, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Grid, FMX.ListBox, FMX.Edit;

type
  TFrame7 = class(TFrame)
    StringGrid6: TStringGrid;
    L_Top_Ordonnance: TLayout;
    Layout1: TLayout;
    ComboBox1: TComboBox;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    procedure Layout2Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame7.Layout2Resize(Sender: TObject);
begin
  Layout1.Width := L_Top_Ordonnance.Width / 2;
  Layout2.Width := L_Top_Ordonnance.Width / 2;
  Layout3.Width := Layout2.Width / 4;
  Layout4.Width := Layout2.Width / 4;
  Layout5.Width := Layout2.Width / 4;
  Layout6.Width := Layout2.Width / 4;
end;

end.
