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
    RB_HA_IgM: TRadioButton;
    RB_HA_IgG: TRadioButton;
    GroupBox7: TGroupBox;
    CB_HB_Anti_VHB: TCheckBox;
    CB_HB_Antigene_BHs: TCheckBox;
    GroupBox8: TGroupBox;
    CB_HC_Anti_VHC: TCheckBox;
    GroupBox9: TGroupBox;
    CB_VIH_Anti_VIH: TCheckBox;
    TabItem9: TTabItem;
    GroupBox16: TGroupBox;
    GroupBox10: TGroupBox;
    CB_MI_Anti_EBV: TCheckBox;
    CB_MI_VCA: TCheckBox;
    CB_MI_EBNA: TCheckBox;
    CB_MI_EA: TCheckBox;
    GroupBox13: TGroupBox;
    CB_RUB_IgM: TCheckBox;
    CB_RUB_IgA: TCheckBox;
    CB_RUB_IgG: TCheckBox;
    GroupBox17: TGroupBox;
    GroupBox15: TGroupBox;
    CB_Toxo_Anti_IgM: TCheckBox;
    CB_HA_Anit_VHA: TCheckBox;
    GroupBox11: TGroupBox;
    CB_SFT_Anti_O: TCheckBox;
    CB_SFT_Anti_H: TCheckBox;
    procedure FrameResize(Sender: TObject);
    procedure CB_HA_Anit_VHAChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TFrame5.CB_HA_Anit_VHAChange(Sender: TObject);
begin
  if (CB_HA_Anit_VHA.IsChecked = True) then
  Begin
    RB_HA_IgM.Enabled := True;
    RB_HA_IgG.Enabled := True;
  End;
end;

procedure TFrame5.FrameResize(Sender: TObject);
begin
  //Viral
  GroupBox6.Width := TabControl1.Width / 4;
  GroupBox7.Width := TabControl1.Width / 4;
  GroupBox8.Width := TabControl1.Width / 4;
  GroupBox9.Width := TabControl1.Width / 4;
  //Bact | Para
  GroupBox10.Width := GroupBox16.Width / 3;
  GroupBox11.Width := GroupBox16.Width / 3;
  GroupBox13.Width := GroupBox16.Width / 3;
end;

end.
