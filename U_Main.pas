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
  U_Frame_Hemostase, U_Frame_Biochimic, U_Frame_Serologie, FMX.Filter.Effects,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, FMX.Bind.Grid, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

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
    GrouBox4_Table: TGroupBox;
    StringGrid4: TStringGrid;
    StringGrid6: TStringGrid;
    L_Top_Ordonnance: TLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Edit1: TEdit;
    StringGrid7: TStringGrid;
    Layout_Exit_RechercheP: TLayout;
    Label17: TLabel;
    ShadowEffect11: TShadowEffect;
    Label18: TLabel;
    ColorAnimation7: TColorAnimation;
    ShadowEffect14: TShadowEffect;
    Layout3: TLayout;
    Label19: TLabel;
    ShadowEffect15: TShadowEffect;
    Label20: TLabel;
    ColorAnimation8: TColorAnimation;
    ShadowEffect16: TShadowEffect;
    Layout4: TLayout;
    Label21: TLabel;
    ShadowEffect17: TShadowEffect;
    Label22: TLabel;
    ColorAnimation9: TColorAnimation;
    ShadowEffect18: TShadowEffect;
    Label_Refresh1: TLabel;
    ColorAnimation10: TColorAnimation;
    FloatAnimation1: TFloatAnimation;
    Label23: TLabel;
    ColorAnimation11: TColorAnimation;
    FloatAnimation2: TFloatAnimation;
    Label24: TLabel;
    ColorAnimation12: TColorAnimation;
    FloatAnimation3: TFloatAnimation;
    Label25: TLabel;
    ColorAnimation13: TColorAnimation;
    FloatAnimation4: TFloatAnimation;
    StringGrid2: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Refresh_Patient_Table: TLabel;
    ColorAnimation14: TColorAnimation;
    FloatAnimation5: TFloatAnimation;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Layout5: TLayout;
    Label27: TLabel;
    Label28: TLabel;
    ShadowEffect19: TShadowEffect;
    ShadowEffect20: TShadowEffect;
    ColorAnimation15: TColorAnimation;
    TabItem8: TTabItem;
    Frame11: TFrame1;
    TabControl1: TTabControl;
    TabItem9: TTabItem;
    Frame21: TFrame2;
    TabItem10: TTabItem;
    Frame31: TFrame3;
    TabItem11: TTabItem;
    Frame41: TFrame4;
    TabItem12: TTabItem;
    Frame61: TFrame6;
    TabItem13: TTabItem;
    Frame51: TFrame5;
    TabItem14: TTabItem;
    StringGrid8: TStringGrid;
    Layout6: TLayout;
    TabItem15: TTabItem;
    Layout_Exit_Patient: TLayout;
    Label16: TLabel;
    ShadowEffect10: TShadowEffect;
    Label15: TLabel;
    ColorAnimation6: TColorAnimation;
    ShadowEffect8: TShadowEffect;
    Layout7: TLayout;
    Label29: TLabel;
    ShadowEffect21: TShadowEffect;
    Label30: TLabel;
    ColorAnimation16: TColorAnimation;
    ShadowEffect22: TShadowEffect;
    Layout8: TLayout;
    Label31: TLabel;
    ShadowEffect23: TShadowEffect;
    Label32: TLabel;
    ColorAnimation17: TColorAnimation;
    ShadowEffect24: TShadowEffect;
    Layout9: TLayout;
    Label33: TLabel;
    ShadowEffect25: TShadowEffect;
    Label34: TLabel;
    ShadowEffect26: TShadowEffect;
    ColorAnimation18: TColorAnimation;
    Layout10: TLayout;
    Label35: TLabel;
    ShadowEffect27: TShadowEffect;
    Label36: TLabel;
    ColorAnimation19: TColorAnimation;
    ShadowEffect28: TShadowEffect;
    Layout11: TLayout;
    Label37: TLabel;
    ColorAnimation20: TColorAnimation;
    ShadowEffect29: TShadowEffect;
    Label38: TLabel;
    ShadowEffect30: TShadowEffect;
    Layout12: TLayout;
    Label39: TLabel;
    ShadowEffect31: TShadowEffect;
    Label40: TLabel;
    ShadowEffect32: TShadowEffect;
    ColorAnimation21: TColorAnimation;
    Layout13: TLayout;
    Label41: TLabel;
    ShadowEffect33: TShadowEffect;
    Label42: TLabel;
    ColorAnimation22: TColorAnimation;
    ShadowEffect34: TShadowEffect;
    Layout14: TLayout;
    Label43: TLabel;
    ColorAnimation23: TColorAnimation;
    ShadowEffect35: TShadowEffect;
    Label44: TLabel;
    ShadowEffect36: TShadowEffect;
    Layout15: TLayout;
    Label45: TLabel;
    ShadowEffect37: TShadowEffect;
    Label46: TLabel;
    ShadowEffect38: TShadowEffect;
    ColorAnimation24: TColorAnimation;
    Layout16: TLayout;
    Label47: TLabel;
    ShadowEffect39: TShadowEffect;
    Label48: TLabel;
    ColorAnimation25: TColorAnimation;
    ShadowEffect40: TShadowEffect;
    Layout17: TLayout;
    Label49: TLabel;
    ColorAnimation26: TColorAnimation;
    ShadowEffect41: TShadowEffect;
    Label50: TLabel;
    ShadowEffect42: TShadowEffect;
    Layout18: TLayout;
    Label51: TLabel;
    ShadowEffect43: TShadowEffect;
    Label52: TLabel;
    ShadowEffect44: TShadowEffect;
    ColorAnimation27: TColorAnimation;
    Layout19: TLayout;
    Label53: TLabel;
    ShadowEffect45: TShadowEffect;
    Label54: TLabel;
    ColorAnimation28: TColorAnimation;
    ShadowEffect46: TShadowEffect;
    Layout20: TLayout;
    Label55: TLabel;
    ColorAnimation29: TColorAnimation;
    ShadowEffect47: TShadowEffect;
    Label56: TLabel;
    ShadowEffect48: TShadowEffect;
    Layout21: TLayout;
    Label57: TLabel;
    ShadowEffect49: TShadowEffect;
    Label58: TLabel;
    ColorAnimation30: TColorAnimation;
    ShadowEffect50: TShadowEffect;
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
    procedure Button2Click(Sender: TObject);
    procedure Frame_PrincipaleButton1Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Frame11Button2Click(Sender: TObject);
    procedure Frame11Button1Click(Sender: TObject);
    procedure StringGrid5CellClick(const Column: TColumn; const Row: Integer);
    procedure Refresh_Patient_TableMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure Refresh_Patient_TableMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label23MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label23MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label24MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label24MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label25MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label25MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure StringGrid5ColResize;
    procedure Label30Click(Sender: TObject);
    procedure FloatAnimation5Finish(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation4Finish(Sender: TObject);
  private
    { Private declarations }
    WidthX, HeightX: Integer;
  public
    { Public declarations }
    Id_Patient, Nom_Patient, Prenom_Patient, Type_Patient: String;
  end;

var
  Main: TMain;

implementation

uses
  U_Option, U_Log, U_Entreprise, Winapi.Windows, U_DataModule;
{$R *.fmx}
{$R resources.RES}

procedure TMain.FloatAnimation2Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Groupage.Refresh;
end;

procedure TMain.FloatAnimation4Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Patient.Refresh;
end;

procedure TMain.FloatAnimation5Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Patient_Table.Refresh;
end;

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
  StringGrid5ColResize;
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
  // StringGrid5.Columns[1].Width := 700;
end;

procedure TMain.StringGrid5ColResize;
Var
  i: Integer;
Begin
  for i := 0 to 15 do
  Begin
    StringGrid5.Columns[i].Width := 120;
    if (i = 0) then
      StringGrid5.Columns[i].Width := 80;
    if (i = 5) then
      StringGrid5.Columns[i].Width := 70;
    if (i = 6) then
      StringGrid5.Columns[i].Width := 70;
  End;
  for i := 0 to 2 do
  Begin
    StringGrid2.Columns[i].Width := 140;
    StringGrid4.Columns[i].Width := 140;
  End;
End;

procedure TMain.Frame11Button1Click(Sender: TObject);
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
      Edit;
      Frame_Principale.Insert;
      Frame_Information.Insert;
      Post;
      SQl.Clear;
      Active := False;
    End;
    Frame_Hemogramme.Edit;
    Frame_Hemostase.Edit;
    Frame_Serologie.Edit;
    Frame_Biochimic.Edit;
  end;
end;

procedure TMain.Frame11Button2Click(Sender: TObject);
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

procedure TMain.Button2Click(Sender: TObject);
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

procedure TMain.Label15Click(Sender: TObject);
begin
  inherited;
  Patient.Visible := False;
  H_Gen_Patient.Visible := False;
  H_Accueil.IsSelected := True;
end;

procedure TMain.Label18Click(Sender: TObject);
begin
  inherited;
  Recherche_Patient.Visible := False;
  H_Gen_RechercheP.Visible := False;
  H_Accueil.IsSelected := True;
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

procedure TMain.Label20Click(Sender: TObject);
begin
  inherited;
  Nouveau_Patient.Visible := False;
  H_Gen_NouveauP.Visible := False;
  H_Accueil.IsSelected := True;
end;

procedure TMain.Label22Click(Sender: TObject);
begin
  inherited;
  RDV.Visible := False;
  H_Gen_RDV.Visible := False;
  H_Accueil.IsSelected := True;
end;

procedure TMain.Label23MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation2.enabled := False;
end;

procedure TMain.Label23MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation2.enabled := True;
end;

procedure TMain.Label24MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation3.enabled := False;
end;

procedure TMain.Label24MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation3.enabled := True;
end;

procedure TMain.Label25MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation4.enabled := False;
end;

procedure TMain.Label25MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation4.enabled := True;
end;

procedure TMain.Refresh_Patient_TableMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation5.enabled := False;
end;

procedure TMain.Refresh_Patient_TableMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation5.enabled := True;
end;

procedure TMain.Label30Click(Sender: TObject);
begin
  inherited;
  if ((Id_Patient <> '') and (Nom_Patient <> '') and (Prenom_Patient <> '') and
    (Type_Patient <> '')) then
  Begin
    With DataModule1.FDCmnd_Drop_Patient do
    Begin
      Active := False;
      CommandText.Clear;
      CommandText.Text := ('DELETE FROM Patient WHERE Patient_ID="' + Id_Patient
        + '" and Nom="' + Nom_Patient + '" and Prenom="' + Prenom_Patient +
        '" and Type="' + Type_Patient + '";');
      Active := True;
      Execute;
      Active := False;
      CommandText.Clear;
      FloatAnimation5.OnFinish(FloatAnimation5);
    End;
  End;
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

procedure TMain.Label_Refresh1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation1.enabled := False;
end;

procedure TMain.Label_Refresh1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation1.enabled := True;
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

procedure TMain.StringGrid5CellClick(const Column: TColumn; const Row: Integer);
Var
  TRow: Integer;
begin
  inherited;
  TRow := StringGrid5.Row;
  Id_Patient := StringGrid5.Cells[0, TRow];
  Nom_Patient := StringGrid5.Cells[1, TRow];
  Prenom_Patient := StringGrid5.Cells[2, TRow];
  Type_Patient := StringGrid5.Cells[5, TRow];
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
