unit U_Frame_Biochimic;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts;

type
  TFrame6 = class(TFrame)
    Layout1: TLayout;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Layout2: TLayout;
    Edit6: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit7: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Edit8: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Edit9: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Layout3: TLayout;
    Edit11: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Edit12: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Edit13: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Edit14: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Edit15: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    Layout4: TLayout;
    Edit16: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Edit17: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    Edit18: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Edit19: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Edit20: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Layout0: TLayout;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame6.FrameResize(Sender: TObject);
begin
  Layout1.Width := Layout0.Width / 4;
  Layout2.Width := Layout0.Width / 4;
  Layout3.Width := Layout0.Width / 4;
  Layout4.Width := Layout0.Width / 4;
end;

end.

