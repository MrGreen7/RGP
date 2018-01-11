unit U_Option;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.EditBox,
  FMX.ComboTrackBar, FMX.Controls.Presentation, FMX.Edit, FMX.ComboEdit,
  FMX.StdCtrls, FMX.Layouts, FMX.TreeView;

type
  TOption = class(TForm)
    Panel1: TPanel;
    TreeView1: TTreeView;
    TreeView2: TTreeView;
    GroupBox1: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Option: TOption;

implementation

{$R *.fmx}

end.
