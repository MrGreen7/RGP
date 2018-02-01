unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Styles.Objects, FMX.Ani, FMX.EditBox,
  FMX.ComboTrackBar, FMX.Edit, FMX.ComboEdit, FMX.Layouts, FMX.ListBox, FMX.ExtCtrls,
  FMX.Effects, FMX.Objects, FMX.TreeView, System.Rtti, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Grid, U_Fenetre, U_Base_Form, FMX.Calendar, FMX.DateTimeCtrls, FMX.Memo;

type
  TMain = class(TBase_Form)
    HeaderT: TTabControl;
    H_Accueil: TTabItem;
    H_Editeur: TTabItem;
    ListT: TTabControl;
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
    MainT: TTabControl;
    P_Accueil: TTabItem;
    Patient: TTabItem;
    RDV: TTabItem;
    Ordonnance: TTabItem;
    H_Gen_Patient: TTabItem;
    H_Gen_RDV: TTabItem;
    H_Gen_Ordo: TTabItem;
    TreeView1: TTreeView;
    T_Accueil: TTreeViewItem;
    T_Patient: TTreeViewItem;
    Patient_Recherche: TTreeViewItem;
    T_RDV: TTreeViewItem;
    T_Ordo: TTreeViewItem;
    New_Patient: TTreeViewItem;
    GrouBox1_Table: TGroupBox;
    GrouBox2_Table: TGroupBox;
    GrouBox3_Table: TGroupBox;
    GrouBox4_Table: TGroupBox;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    Panel8: TPanel;
    Label15: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Recherche_Patient: TTabItem;
    Nouveau_Patient: TTabItem;
    H_Gen_RechercheP: TTabItem;
    H_Gen_NouveauP: TTabItem;
    Panel12: TPanel;
    Panel13: TPanel;
    ColorAnimation1: TColorAnimation;
    ColorAnimation2: TColorAnimation;
    ColorAnimation3: TColorAnimation;
    ColorAnimation4: TColorAnimation;
    ColorAnimation5: TColorAnimation;
    ImageControl1: TImageControl;
    GroupBox_Info: TGroupBox;
    GroupBox_Liens: TGroupBox;
    TabControl_NouveauP: TTabControl;
    TabItem1: TTabItem;
    TabItem6: TTabItem;
    IP_Label1: TLabel;
    IP_Label2: TLabel;
    IP_Label3: TLabel;
    IP_Label4: TLabel;
    IP_Edit1: TEdit;
    IP_Edit2: TEdit;
    IP_DateEdit1: TDateEdit;
    IP_ComboBox1: TComboBox;
    IP_Label5: TLabel;
    IP_Label6: TLabel;
    IP_Label7: TLabel;
    IP_Label8: TLabel;
    IP_Edit3: TEdit;
    IP_Edit4: TEdit;
    IP_ComboBox2: TComboBox;
    IP_DateEdit2: TDateEdit;
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
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem7: TTabItem;
    Label32: TLabel;
    Hemog_Label1: TLabel;
    Hemog_Label2: TLabel;
    Hemog_Label3: TLabel;
    Hemog_Label4: TLabel;
    Hemog_Edit1: TEdit;
    Hemog_Edit2: TEdit;
    Hemog_Edit3: TEdit;
    Hemog_Edit4: TEdit;
    Hemog_Label5: TLabel;
    Hemog_Edit5: TEdit;
    Hemog_Label6: TLabel;
    Hemog_Edit6: TEdit;
    Hemog_Edit7: TEdit;
    Hemog_Edit8: TEdit;
    Hemog_Label8: TLabel;
    Hemog_Label7: TLabel;
    Hemog_LabelEdit1: TLabel;
    Hemog_LabelEdit2: TLabel;
    Hemog_LabelEdit3: TLabel;
    Hemog_LabelEdit4: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Hemos_Label1: TLabel;
    Hemos_Edit1: TEdit;
    Hemos_ComboBox1: TComboBox;
    Hemos_Edit2: TEdit;
    Hemos_Label2: TLabel;
    Hemos_ComboBox2: TComboBox;
    Hemos_Edit3: TEdit;
    Hemos_Label3: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Hemos_Edit4: TEdit;
    Edit1: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    Label22: TLabel;
    TabControl1: TTabControl;
    TabItem8: TTabItem;
    TabItem9: TTabItem;
    GroupBox6: TGroupBox;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox7: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox8: TGroupBox;
    CheckBox4: TCheckBox;
    GroupBox9: TGroupBox;
    CheckBox5: TCheckBox;
    GroupBox10: TGroupBox;
    CheckBox6: TCheckBox;
    GroupBox11: TGroupBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    GroupBox12: TGroupBox;
    CheckBox9: TCheckBox;
    GroupBox13: TGroupBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    GroupBox15: TGroupBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure P_AccueilClick(Sender: TObject);
    procedure PatientClick(Sender: TObject);
    procedure RDVClick(Sender: TObject);
    procedure OrdonnanceClick(Sender: TObject);
    procedure T_AccueilClick(Sender: TObject);
    procedure T_PatientClick(Sender: TObject);
    procedure T_RDVClick(Sender: TObject);
    procedure T_OrdoClick(Sender: TObject);
    procedure Recherche_PatientClick(Sender: TObject);
    procedure Nouveau_PatientClick(Sender: TObject);
    procedure Patient_RechercheClick(Sender: TObject);
    procedure New_PatientClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure FormCreate(Sender: TObject);
    procedure Hemos_Edit1Change(Sender: TObject);
    procedure Hemos_Edit2Change(Sender: TObject);
  private
    { Private declarations }
    WidthX, HeightX: Integer;
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses
  U_DataModule, U_Option, U_Log, U_Entreprise, Winapi.Windows;
{$R *.fmx}
{$R resources.RES}

procedure TMain.Hemos_Edit1Change(Sender: TObject);
begin
  if (Hemos_Edit1.Text <> '') then
    Hemos_Combobox1.Enabled := True
  else
  begin
    Hemos_ComboBox1.Enabled := False;
    Hemos_ComboBox1.ItemIndex := -1;
  end;
end;

procedure TMain.Hemos_Edit2Change(Sender: TObject);
begin
  if (Hemos_Edit2.Text <> '') then
    Hemos_Combobox2.Enabled := True
  else
  begin
    Hemos_ComboBox2.Enabled := False;
    Hemos_ComboBox2.ItemIndex := -1;
  end;

end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Msg: Integer;
begin
  Msg := MessageDlg('Vous etez sure !', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  if (Msg = mrNo) then
    CanClose := False;
end;

procedure TMain.FormShow(Sender: TObject);
var
  LogDlg: TLog;
begin
  P_Accueil.IsSelected := True;
  LogDlg := TLog.Create(self);
  if (LogDlg.ShowModal = mrCancel) then
    Application.Terminate;
  LogDlg.Free;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  WidthX := 1280;
  HeightX := 688;
end;

procedure TMain.FormPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  WidthX := Main.Width;
  HeightX := Main.Height;
end;

procedure TMain.FormResize(Sender: TObject);
begin
  // Minmum Size for MainForm -- U_Main.pas --

  if ((Main.Width <= 1260) or (Main.Height <= 660)) then
  begin
  // Setting Main form Sizes
    if (Main.Width <= 1260) then
    begin
      Main.Width := 1260;
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
    end;
    if (Main.Height <= 660) then
    begin
      Main.Height := 660;
      TabControl_NouveauP.Height := 275;
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
    end;
  //Setting Groupbox_info size
  end;

  // Resize Break Points

  //---------------------------| MAX |----------------------------------
  if ((Main.Width > 1615) or (Main.Height >= 900)) then
  begin
    if Main.Width > 1615 then
    begin
      GroupBox_Info.Width := 940;
    // ------------------------| Information Principale |--------------------
    //Components Position in The X-axis
      IP_Edit3.Position.X := 550;
      IP_Edit4.Position.X := 550;
      IP_Combobox2.Position.X := 550;
      IP_DateEdit2.Position.X := 550;
      IP_Label5.Position.X := 452;
      IP_Label6.Position.X := 452;
      IP_Label7.Position.X := 452;
      IP_Label8.Position.X := 452;
    //Setting Components sizing -- Groupbox_info
      IP_Edit1.Width := 360;
      IP_Edit2.Width := 360;
      IP_Edit3.Width := 360;
      IP_Edit4.Width := 360;
      IP_Combobox1.Width := 360;
      IP_Combobox2.Width := 360;
      IP_DateEdit1.Width := 360;
      IP_DateEdit2.Width := 360;

    //------------------------| Adresse et Contact |--------------------
      //  Width
      AC_Edit5.Width := 888;
      AC_Edit6.Width := 360;
      AC_Edit7.Width := 360;
      AC_Edit8.Width := 360;
      AC_Edit9.Width := 360;
      AC_Combobox3.Width := 360;
      AC_Combobox4.Width := 360;
      //  Position
      AC_Edit8.Position.X := 640;
      AC_Edit9.Position.X := 640;
      AC_Combobox4.Position.X := 640;
      AC_Label5.Position.X := 539;
      AC_Label6.Position.X := 539;
      AC_Label7.Position.X := 539;
    end;
    //------------------------| Hemogramme |--------------------
      //LEFT
    begin
      Hemog_Label1.Position.X := 10;
      Hemog_Label2.Position.X := 10;
      Hemog_Label3.Position.X := 10;
      Hemog_Label4.Position.X := 10;

      Hemog_Edit1.Position.X := 104;
      Hemog_Edit2.Position.X := 104;
      Hemog_Edit3.Position.X := 104;
      Hemog_Edit4.Position.X := 104;

      Hemog_Edit1.Width := 417;
      Hemog_Edit2.Width := 417;
      Hemog_Edit3.Width := 417;
      Hemog_Edit4.Width := 417;
    end;
      //Right
    begin
      Hemog_Label5.Position.X := 525;
      Hemog_Label6.Position.X := 525;
      Hemog_Label7.Position.X := 525;
      Hemog_Label8.Position.X := 525;

      Hemog_Edit5.Position.X := 626;
      Hemog_Edit6.Position.X := 626;
      Hemog_Edit7.Position.X := 626;
      Hemog_Edit8.Position.X := 626;

      Hemog_Edit5.Width := 417;
      Hemog_Edit6.Width := 417;
      Hemog_Edit7.Width := 417;
      Hemog_Edit8.Width := 417;
    end;
    if Main.Height >= 700 then
      TabControl_NouveauP.Height := 460;
  end
  else if ((Main.Width > 1260) and (Main.Width <= 1615)) then
  begin
    //----------------------| MIN |------------------------------
    if ((Main.Width > 1261) and (Main.Width <= 1281)) then
    begin
      //Components Position in The X-axis
      IP_Edit3.Position.X := 394;
      IP_Edit4.Position.X := 394;
      IP_Combobox2.Position.X := 394;
      IP_DateEdit2.Position.X := 394;
      IP_Label5.Position.X := 290;
      IP_Label6.Position.X := 290;
      IP_Label7.Position.X := 290;
      IP_Label8.Position.X := 290;

      //Components sizing
      GroupBox_Info.Width := 608;
      IP_Edit1.Width := 200;
      IP_Edit2.Width := 200;
      IP_Edit3.Width := 200;
      IP_Edit4.Width := 200;
      IP_Combobox1.Width := 200;
      IP_Combobox2.Width := 200;
      IP_DateEdit1.Width := 200;
      IP_DateEdit2.Width := 200;
      //------------------------| Adresse et Contact |--------------------
      //  Width
      AC_Edit5.Width := 545;
      AC_Edit6.Width := 217;
      AC_Edit7.Width := 217;
      AC_Edit8.Width := 217;
      AC_Edit9.Width := 217;
      AC_Combobox3.Width := 217;
      AC_Combobox4.Width := 217;
      //  Position
      AC_Edit8.Position.X := 440;
      AC_Edit9.Position.X := 440;
      AC_Combobox4.Position.X := 440;
      AC_Label5.Position.X := 339;
      AC_Label6.Position.X := 339;
      AC_Label7.Position.X := 339;
      //------------------------| Hemogramme |--------------------
      //LEFT
      begin
        Hemog_Label1.Position.X := 10;
        Hemog_Label2.Position.X := 10;
        Hemog_Label3.Position.X := 10;
        Hemog_Label4.Position.X := 10;

        Hemog_Edit1.Position.X := 104;
        Hemog_Edit2.Position.X := 104;
        Hemog_Edit3.Position.X := 104;
        Hemog_Edit4.Position.X := 104;

        Hemog_Edit1.Width := 417;
        Hemog_Edit2.Width := 417;
        Hemog_Edit3.Width := 417;
        Hemog_Edit4.Width := 417;
      end;
      //Right
      begin
        Hemog_Label5.Position.X := 525;
        Hemog_Label6.Position.X := 525;
        Hemog_Label7.Position.X := 525;
        Hemog_Label8.Position.X := 525;

        Hemog_Edit5.Position.X := 626;
        Hemog_Edit6.Position.X := 626;
        Hemog_Edit7.Position.X := 626;
        Hemog_Edit8.Position.X := 626;

        Hemog_Edit5.Width := 417;
        Hemog_Edit6.Width := 417;
        Hemog_Edit7.Width := 417;
        Hemog_Edit8.Width := 417;
      end;

      if Main.Height <= 700 then
        TabControl_NouveauP.Height := 275;
    end;
    //-----------------------| MID |----------------------------------
    {else if ((Main.Width < 1615) and (Edit3.Width <= 360)) then
    begin
      WidthX := Main.Width - WidthX;
      GroupBox_Info.Width := GroupBox_Info.Width + WidthX;
      //Position on runtime
      begin
        Edit3.Position.X := Edit3.Position.X + (WidthX / 2.4);
        Edit4.Position.X := Edit4.Position.X + (WidthX / 2.4);
        Combobox2.Position.X := Combobox2.Position.X + (WidthX / 2.4);
        DateEdit2.Position.X := DateEdit2.Position.X + (WidthX / 2.4);
        Label20.Position.X := Label20.Position.X + (WidthX / 2.4);
        Label21.Position.X := Label21.Position.X + (WidthX / 2.4);
        Label22.Position.X := Label22.Position.X + (WidthX / 2.4);
        Label23.Position.X := Label23.Position.X + (WidthX / 2.4);
      end;
      //Width Resize on Runtime
      begin
        Edit1.Width := Edit1.Width + (WidthX / 2.4);
        Edit2.Width := Edit2.Width + (WidthX / 2.4);
        Edit3.Width := Edit3.Width + (WidthX / 2.4);
        Edit4.Width := Edit4.Width + (WidthX / 2.4);
        Combobox1.Width := Combobox1.Width + (WidthX / 2.4);
        Combobox2.Width := Combobox2.Width + (WidthX / 2.4);
        DateEdit1.Width := DateEdit1.Width + (WidthX / 2.4);
        DateEdit2.Width := DateEdit2.Width + (WidthX / 2.4);
      end;
    end;  }
  end;
  {
  else if ((Main.Height >= 660) and (Main.Height <= 900)) then
  begin
    HeightX := Main.Height - HeightX;
    TabControl_NouveauP.Height := TabControl_NouveauP.Height + HeightX;
  end; }
end;

procedure TMain.Label12Click(Sender: TObject);
var
  EntrepriseDlg: TEntreprise;
begin
  EntrepriseDlg := TEntreprise.Create(self);
  if (EntrepriseDlg.ShowModal = mrCancel) then
    EntrepriseDlg.Free;
end;

procedure TMain.Label1Click(Sender: TObject);
begin
  H_Accueil.Visible := True;
  H_Accueil.IsSelected := True;
  P_Accueil.Visible := True;
  P_Accueil.IsSelected := True;
  Patient.Visible := False;
  Nouveau_Patient.Visible := False;
  Recherche_Patient.Visible := False;
  RDV.Visible := False;
  Ordonnance.Visible := False;
  H_Gen_Patient.Visible := False;
  H_Gen_RDV.Visible := False;
  H_Gen_Ordo.Visible := False;
  H_Gen_NouveauP.Visible := False;
  H_Gen_RechercheP.Visible := False;
end;

procedure TMain.Label4Click(Sender: TObject);
var
  FenetreDlg: TFenetre;
begin
  FenetreDlg := TFenetre.Create(self);
  FenetreDlg.ShowModal;
end;

procedure TMain.Label6Click(Sender: TObject);
var
  OptionDlg: TOption;
begin
  OptionDlg := TOption.Create(self);
  OptionDlg.ShowModal;
end;

procedure TMain.New_PatientClick(Sender: TObject);
begin
  Nouveau_Patient.Visible := True;
  Nouveau_Patient.OnClick(Patient);
  Nouveau_Patient.IsSelected := True;
end;

procedure TMain.Nouveau_PatientClick(Sender: TObject);
begin
  H_Gen_Patient.Visible := False;
  H_Gen_Ordo.Visible := False;
  H_Gen_RDV.Visible := False;
  H_Accueil.IsSelected := False;
  H_Gen_NouveauP.Visible := True;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.IsSelected := True;
end;

procedure TMain.OrdonnanceClick(Sender: TObject);
begin
  H_Gen_Patient.Visible := False;
  H_Gen_Ordo.Visible := True;
  H_Gen_Ordo.IsSelected := True;
  H_Gen_RDV.Visible := False;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.Visible := False;
end;

procedure TMain.PatientClick(Sender: TObject);
begin
  H_Gen_Patient.Visible := True;
  H_Gen_Patient.IsSelected := True;
  H_Gen_Ordo.Visible := False;
  H_Gen_RDV.Visible := False;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.Visible := False;
end;

procedure TMain.Patient_RechercheClick(Sender: TObject);
begin
  Recherche_Patient.Visible := True;
  Recherche_Patient.OnClick(Patient);
  Recherche_Patient.IsSelected := True;
end;

procedure TMain.P_AccueilClick(Sender: TObject);
begin
  H_Gen_Patient.Visible := False;
  H_Gen_Ordo.Visible := False;
  H_Gen_RDV.Visible := False;
  H_Accueil.IsSelected := True;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.Visible := False;
end;

procedure TMain.RDVClick(Sender: TObject);
begin
  H_Gen_Patient.Visible := False;
  H_Gen_Ordo.Visible := False;
  H_Gen_RDV.Visible := True;
  H_Gen_RDV.IsSelected := True;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.Visible := False;
end;

procedure TMain.Recherche_PatientClick(Sender: TObject);
begin
  H_Gen_Patient.Visible := False;
  H_Gen_Ordo.Visible := False;
  H_Gen_RDV.Visible := False;
  H_Accueil.IsSelected := False;
  H_Gen_NouveauP.Visible := False;
  H_Gen_RechercheP.Visible := True;
  H_Gen_RechercheP.IsSelected := True;

end;

procedure TMain.T_AccueilClick(Sender: TObject);
begin
  P_Accueil.Visible := True;
  P_Accueil.OnClick(P_Accueil);
  P_Accueil.IsSelected := True;
end;

procedure TMain.T_OrdoClick(Sender: TObject);
begin
  Ordonnance.Visible := True;
  Ordonnance.OnClick(Ordonnance);
  Ordonnance.IsSelected := True;
end;

procedure TMain.T_PatientClick(Sender: TObject);
begin
  Patient.Visible := True;
  Patient.OnClick(Patient);
  Patient.IsSelected := True;
end;

procedure TMain.T_RDVClick(Sender: TObject);
begin
  RDV.Visible := True;
  RDV.OnClick(RDV);
  RDV.IsSelected := True;
end;

end.

