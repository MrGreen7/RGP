unit U_Frame_Serologie;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
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
    procedure Clear;
    procedure Insert;
    procedure Edit;
    procedure FrameResize(Sender: TObject);
    procedure CB_HA_Anit_VHAChange(Sender: TObject);
    function IsSet: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

Uses
  U_DataModule;
{$R *.fmx}

function TFrame5.IsSet;
begin
  if ((CB_HA_Anit_VHA.IsChecked = False) and (RB_HA_IgG.IsChecked = False) and
    (RB_HA_IgM.IsChecked = False) and (CB_HB_Anti_VHB.IsChecked = False) and
    (CB_HB_Antigene_BHs.IsChecked = False) and
    (CB_HC_Anti_VHC.IsChecked = False) and (CB_VIH_Anti_VIH.IsChecked = False)
    and (CB_MI_Anti_EBV.IsChecked = False) and (CB_MI_EA.IsChecked = False) and
    (CB_MI_VCA.IsChecked = False) and (CB_MI_EBNA.IsChecked = False) and
    (CB_SFT_Anti_H.IsChecked = False) and (CB_SFT_Anti_O.IsChecked = False) and
    (CB_RUB_IgM.IsChecked = False) and (CB_RUB_IgA.IsChecked = False) and
    (CB_RUB_IgG.IsChecked = False) and (CB_Toxo_Anti_IgM.IsChecked = False))
  then
  Begin
    Result := False;
  End
  Else
    Result := True;
end;

procedure TFrame5.Clear;
BEgin
  // Hépatite A
  CB_HA_Anit_VHA.IsChecked := False;
  RB_HA_IgG.IsChecked := False;
  RB_HA_IgM.IsChecked := False;
  // Hépatite B
  CB_HB_Anti_VHB.IsChecked := False;
  CB_HB_Antigene_BHs.IsChecked := False;
  // Hépatite C
  CB_HC_Anti_VHC.IsChecked := False;
  // VIH
  CB_VIH_Anti_VIH.IsChecked := False;
  // mononucléos infectieus
  CB_MI_Anti_EBV.IsChecked := False;
  CB_MI_EA.IsChecked := False;
  CB_MI_VCA.IsChecked := False;
  CB_MI_EBNA.IsChecked := False;
  // salmonelloses
  CB_SFT_Anti_H.IsChecked := False;
  CB_SFT_Anti_O.IsChecked := False;
  // Rubéole
  CB_RUB_IgM.IsChecked := False;
  CB_RUB_IgA.IsChecked := False;
  CB_RUB_IgG.IsChecked := False;
  // Toxoplasme
  CB_Toxo_Anti_IgM.IsChecked := False;
End;

procedure TFrame5.Insert;
begin
  With DataModule1.FDQuery1 do
  Begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'Select * From Serologie';
    Active := True;
    Insert;
    FieldByName('HA_Anti-VHA').AsBoolean := CB_HA_Anit_VHA.IsChecked;
    FieldByName('HA_IgG').AsBoolean := RB_HA_IgG.IsChecked;
    FieldByName('HA_IgM').AsBoolean := RB_HA_IgM.IsChecked;
    FieldByName('HB_Anti-VHB').AsBoolean := CB_HB_Anti_VHB.IsChecked;
    FieldByName('HB_Antigene_HBs').AsBoolean := CB_HB_Antigene_BHs.IsChecked;
    FieldByName('HC_Anit-VHC').AsBoolean := CB_HC_Anti_VHC.IsChecked;
    FieldByName('VIH_Anti-VIH').AsBoolean := CB_VIH_Anti_VIH.IsChecked;
    FieldByName('RUB_Anti_M').AsBoolean := CB_RUB_IgM.IsChecked;
    FieldByName('RUB_Anti_A').AsBoolean := CB_RUB_IgA.IsChecked;
    FieldByName('RUB_Anti_G').AsBoolean := CB_RUB_IgG.IsChecked;
    FieldByName('Salm_Anti_H').AsBoolean := CB_SFT_Anti_H.IsChecked;
    FieldByName('Salm_Anti_O').AsBoolean := CB_SFT_Anti_O.IsChecked;
    FieldByName('Mono_Anti_EBV').AsBoolean := CB_MI_Anti_EBV.IsChecked;
    FieldByName('Mono_Anti_G_Anti_VCA').AsBoolean := CB_MI_VCA.IsChecked;
    FieldByName('Mono_Anti_G_Anti_EBNA').AsBoolean := CB_MI_EBNA.IsChecked;
    FieldByName('Mono_Anti_G_Anti_EA').AsBoolean := CB_MI_EA.IsChecked;
    FieldByName('Toxo_Anti_M').AsBoolean := CB_Toxo_Anti_IgM.IsChecked;
    Post;
    Active := False;
    SQL.Clear;
  End;
end;

procedure TFrame5.Edit;
begin
  With DataModule1.FDQuery1 do
  Begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'Select * From Serologie';
    Active := True;
    Edit;
    FieldByName('HA_Anti-VHA').AsBoolean := CB_HA_Anit_VHA.IsChecked;
    FieldByName('HA_IgG').AsBoolean := RB_HA_IgG.IsChecked;
    FieldByName('HA_IgM').AsBoolean := RB_HA_IgM.IsChecked;
    FieldByName('HB_Anti-VHB').AsBoolean := CB_HB_Anti_VHB.IsChecked;
    FieldByName('HB_Antigene_HBs').AsBoolean := CB_HB_Antigene_BHs.IsChecked;
    FieldByName('HC_Anit-VHC').AsBoolean := CB_HC_Anti_VHC.IsChecked;
    FieldByName('VIH_Anti-VIH').AsBoolean := CB_VIH_Anti_VIH.IsChecked;
    FieldByName('RUB_Anti_M').AsBoolean := CB_RUB_IgM.IsChecked;
    FieldByName('RUB_Anti_A').AsBoolean := CB_RUB_IgA.IsChecked;
    FieldByName('RUB_Anti_G').AsBoolean := CB_RUB_IgG.IsChecked;
    FieldByName('Salm_Anti_H').AsBoolean := CB_SFT_Anti_H.IsChecked;
    FieldByName('Salm_Anti_O').AsBoolean := CB_SFT_Anti_O.IsChecked;
    FieldByName('Mono_Anti_EBV').AsBoolean := CB_MI_Anti_EBV.IsChecked;
    FieldByName('Mono_Anti_G_Anti_VCA').AsBoolean := CB_MI_VCA.IsChecked;
    FieldByName('Mono_Anti_G_Anti_EBNA').AsBoolean := CB_MI_EBNA.IsChecked;
    FieldByName('Mono_Anti_G_Anti_EA').AsBoolean := CB_MI_EA.IsChecked;
    FieldByName('Toxo_Anti_M').AsBoolean := CB_Toxo_Anti_IgM.IsChecked;
    Post;
    Active := False;
    SQL.Clear;
  End;
end;

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
  // Viral
  GroupBox6.Width := TabControl1.Width / 4;
  GroupBox7.Width := TabControl1.Width / 4;
  GroupBox8.Width := TabControl1.Width / 4;
  GroupBox9.Width := TabControl1.Width / 4;
  // Bact | Para
  GroupBox10.Width := GroupBox16.Width / 3;
  GroupBox11.Width := GroupBox16.Width / 3;
  GroupBox13.Width := GroupBox16.Width / 3;
end;

end.
