unit U_Base_Form;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TBase_Form = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Base_Form: TBase_Form;

implementation

uses
  U_DataModule;
{$R *.fmx}

end.

