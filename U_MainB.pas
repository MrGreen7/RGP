unit U_MainB;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid;

type
  TMainB = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Grid1: TGrid;
    Grid2: TGrid;
    Grid3: TGrid;
    Grid4: TGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainB: TMainB;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

end.
