unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Styles.Objects, FMX.Ani, FMX.EditBox,
  FMX.ComboTrackBar, FMX.Edit, FMX.ComboEdit, FMX.Layouts, FMX.ListBox, FMX.ExtCtrls,
  FMX.Effects, FMX.Objects, FMX.TreeView, System.Rtti, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Grid, U_Fenetre, U_Base_Form, FMX.Calendar, FMX.DateTimeCtrls;

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
    TabItem2: TTabItem;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    ComboBox1: TComboBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox2: TComboBox;
    DateEdit2: TDateEdit;
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
  if ((Main.Width <= 1260) or (Main.Height <= 658)) then
  begin
    Main.Width := 1280;
    Main.Height := 688;
    GroupBox_Info.Width := 608;
    Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
  end;
  // Resize Break Points
  if ((Main.Width >= 1600) or (Main.Height = 800)) then
  begin
    if Main.Width >= 1600 then
      GroupBox_Info.Width := 940;
    if Main.Height >= 800 then
      TabControl_NouveauP.Height := 460;
  end
  else if ((Main.Width >= 1280) or (Main.Height = 688)) then
  begin
    if (Main.Width <= 1600) then
    begin
      WidthX := Main.Width - WidthX;
      //if Width <= Main.Width then
      Label23.Text := IntToStr(WidthX);
      GroupBox_Info.Width := GroupBox_Info.Width + WidthX;
    end;
    if Main.Height <= 800 then
    begin
      HeightX := Main.Height - HeightX;
      TabControl_NouveauP.Height := TabControl_NouveauP.Height + HeightX;
    end;
  end
  else
  begin
    GroupBox_Info.Width := 608;
    TabControl_NouveauP.Height := 275;
  end;
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

