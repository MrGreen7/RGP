unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Styles.Objects, FMX.Ani,
  FMX.EditBox,
  FMX.ComboTrackBar, FMX.Edit, FMX.ComboEdit, FMX.Layouts, FMX.ListBox,
  FMX.ExtCtrls,
  FMX.Effects, FMX.Objects, FMX.TreeView, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox,
  FMX.Grid, U_Fenetre, U_Base_Form, FMX.Calendar, FMX.DateTimeCtrls, FMX.Memo,
  U_Frame_Inf_Principale, U_Frame_Information, U_Frame_Hemogramme,
  U_Frame_Hemostase, U_Frame_Biochimic, U_Frame_Serologie, FMX.Filter.Effects;

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
    StringGrid5: TStringGrid;
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
    TabControl_NouveauP: TTabControl;
    TabItem1: TTabItem;
    TabItem6: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem7: TTabItem;
    Frame_Principale: TFrame1;
    Frame_Information: TFrame2;
    Frame_Hemogramme: TFrame3;
    Frame_Hemostase: TFrame4;
    Frame_Biochimic: TFrame6;
    Frame_Serologie: TFrame5;
    L_Left_P_Accueil: TLayout;
    L_Right_P_Accueil: TLayout;
    GrouBox1_Table: TGroupBox;
    StringGrid1: TStringGrid;
    GrouBox3_Table: TGroupBox;
    StringGrid3: TStringGrid;
    GrouBox2_Table: TGroupBox;
    StringGrid2: TStringGrid;
    GrouBox4_Table: TGroupBox;
    StringGrid4: TStringGrid;
    StringGrid6: TStringGrid;
    L_Top_Ordonnance: TLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Edit1: TEdit;
    StringGrid7: TStringGrid;
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
    procedure P_AccueilResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Frame_PrincipaleButton2Click(Sender: TObject);
    procedure Frame_PrincipaleButton1Click(Sender: TObject);
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
  U_Option, U_Log, U_Entreprise, Winapi.Windows, U_DataModule;
{$R *.fmx}
{$R resources.RES}

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Msg: Integer;
begin
  Msg := MessageDlg('Vous etez sure !', TMsgDlgType.mtConfirmation,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  if (Msg = mrNo) then
    CanClose := False;
end;

procedure TMain.FormCreate(Sender: TObject);
Begin
  WidthX := 1280;
  HeightX := 688;
end;

procedure TMain.FormPaint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  WidthX := Main.Width;
  HeightX := Main.Height;
end;

procedure TMain.FormResize(Sender: TObject);
begin
  // Frame resize
  Frame_Principale.OnResize(Frame_Principale);
  Frame_Information.OnResize(Frame_Information);
  Frame_Hemogramme.OnResize(Frame_Hemogramme);
  Frame_Hemostase.OnResize(Frame_Hemostase);
  Frame_Biochimic.OnResize(Frame_Biochimic);
  Frame_Serologie.OnResize(Frame_Serologie);

  //
  P_Accueil.OnResize(P_Accueil);
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
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
    end;
  end;

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
//  Frame_Information.WiliyaLoad(Frame_Information.AC_Combobox1);
end;

procedure TMain.Frame_PrincipaleButton1Click(Sender: TObject);
begin
  inherited;
  if (Frame_Principale.SetEdit = True) then
  Begin
    with DataModule1.FDQuery1 do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := ('Select * From Patient');
      Active := True;
      Insert;
      Frame_Principale.Insert;
      Frame_Information.Insert;
      Post;
      SQl.Clear;
      Active := False;
    End;
    if (Frame_Hemogramme.IsSet = True) then
      Frame_Hemogramme.Insert;
    if (Frame_Hemostase.IsSet = True) then
      Frame_Hemostase.Insert;
    if (Frame_Serologie.IsSet = True) then
      Frame_Serologie.Insert;
    if (Frame_Biochimic.IsSet = True) then
      Frame_Biochimic.Insert;
  end;
end;

procedure TMain.Frame_PrincipaleButton2Click(Sender: TObject);
begin
  inherited;
  Frame_Principale.Clear();
  if (TabItem1.IsSelected = True) then
    Frame_Information.Clear;
  if (TabItem2.IsSelected = True) then
    Frame_Hemogramme.Clear;
  if (TabItem3.IsSelected = True) then
    Frame_Hemostase.Clear;
  if (TabItem4.IsSelected = True) then
    Frame_Biochimic.Clear;
  if (TabItem5.IsSelected = True) then
    Frame_Serologie.Clear;
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

procedure TMain.P_AccueilResize(Sender: TObject);
begin
  inherited;
  // Width
  L_Left_P_Accueil.Width := MainT.Width / 2;
  L_Right_P_Accueil.Width := MainT.Width / 2;
  // Height
  GrouBox1_Table.Height := L_Left_P_Accueil.Height / 2;
  GrouBox2_Table.Height := L_Right_P_Accueil.Height / 2;
  GrouBox3_Table.Height := L_Left_P_Accueil.Height / 2;
  GrouBox4_Table.Height := L_Right_P_Accueil.Height / 2;
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
