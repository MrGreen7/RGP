unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Styles.Objects, FMX.Ani,
  FMX.EditBox, FMX.ComboTrackBar, FMX.Edit, FMX.ComboEdit, FMX.Layouts,
  FMX.ListBox, FMX.ExtCtrls, FMX.Effects, FMX.Objects;

type
  TMain = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabControl2: TTabControl;
    Medical: TTabItem;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    ShadowEffect4: TShadowEffect;
    ShadowEffect5: TShadowEffect;
    ShadowEffect7: TShadowEffect;
    ShadowEffect9: TShadowEffect;
    Label12: TLabel;
    ShadowEffect12: TShadowEffect;
    Label13: TLabel;
    ShadowEffect13: TShadowEffect;
    Panel7: TPanel;
    Label10: TLabel;
    ShadowEffect3: TShadowEffect;
    Label11: TLabel;
    ShadowEffect6: TShadowEffect;
    Label14: TLabel;
    Line1: TLine;
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses U_DataModule, U_Option;
{$R *.fmx}

procedure TMain.Label6Click(Sender: TObject);
begin
  Option.Show;
end;

procedure TMain.Label7Click(Sender: TObject);
begin
  Option.Show;
end;

end.
