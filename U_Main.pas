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
  FMX.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Menus, U_Frame_Ordonnance;

type
  TMain = class(TBase_Form)
    HeaderT: TTabControl;
    H_Accueil: TTabItem;
    H_Editeur: TTabItem;
    ListT: TTabControl;
    Medical: TTabItem;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
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
    Layout1: TLayout;
    Layout2: TLayout;
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
    Edit_Patient: TTabItem;
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
    Frame_EP_Principale: TFrame1;
    TabControl1: TTabControl;
    TabItem8: TTabItem;
    Frame_EP_Information: TFrame2;
    TabItem9: TTabItem;
    TabItem10: TTabItem;
    TabItem11: TTabItem;
    TabItem12: TTabItem;
    TabItem13: TTabItem;
    TabItem14: TTabItem;
    Frame_EP_Hemogramme: TFrame3;
    Frame_EP_Hemostase: TFrame4;
    Frame_EP_Biochimic: TFrame6;
    Frame_EP_Serologie: TFrame5;
    Layout: TLayout;
    Layout_Exit_Patient: TLayout;
    Label16: TLabel;
    ShadowEffect10: TShadowEffect;
    Label15: TLabel;
    ColorAnimation6: TColorAnimation;
    ShadowEffect8: TShadowEffect;
    Layout5: TLayout;
    Label28: TLabel;
    ShadowEffect19: TShadowEffect;
    Label27: TLabel;
    ShadowEffect20: TShadowEffect;
    ColorAnimation15: TColorAnimation;
    Layout7: TLayout;
    Label29: TLabel;
    ShadowEffect21: TShadowEffect;
    Label30: TLabel;
    ColorAnimation16: TColorAnimation;
    ShadowEffect22: TShadowEffect;
    Layout8: TLayout;
    Label32: TLabel;
    ColorAnimation17: TColorAnimation;
    ShadowEffect24: TShadowEffect;
    Label31: TLabel;
    ShadowEffect23: TShadowEffect;
    Line2: TLine;
    Line3: TLine;
    Line4: TLine;
    Line5: TLine;
    Layout6: TLayout;
    Layout22: TLayout;
    Label4: TLabel;
    ShadowEffect9: TShadowEffect;
    ColorAnimation2: TColorAnimation;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    Label8: TLabel;
    Layout23: TLayout;
    Label12: TLabel;
    ShadowEffect12: TShadowEffect;
    ColorAnimation4: TColorAnimation;
    Label13: TLabel;
    ShadowEffect13: TShadowEffect;
    Label6: TLabel;
    ShadowEffect4: TShadowEffect;
    ColorAnimation3: TColorAnimation;
    Label7: TLabel;
    ShadowEffect5: TShadowEffect;
    Label9: TLabel;
    Line1: TLine;
    Layout24: TLayout;
    Label10: TLabel;
    ShadowEffect3: TShadowEffect;
    ColorAnimation5: TColorAnimation;
    Label11: TLabel;
    ShadowEffect6: TShadowEffect;
    Label14: TLabel;
    Layout25: TLayout;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    ColorAnimation1: TColorAnimation;
    Label2: TLabel;
    ShadowEffect2: TShadowEffect;
    Label3: TLabel;
    Line6: TLine;
    Line7: TLine;
    Line8: TLine;
    Line9: TLine;
    Layout26: TLayout;
    Layout27: TLayout;
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
    Layout4: TLayout;
    Label21: TLabel;
    ShadowEffect17: TShadowEffect;
    Label22: TLabel;
    ColorAnimation9: TColorAnimation;
    ShadowEffect18: TShadowEffect;
    Layout9: TLayout;
    Label33: TLabel;
    ShadowEffect25: TShadowEffect;
    Label34: TLabel;
    ShadowEffect26: TShadowEffect;
    ColorAnimation18: TColorAnimation;
    Layout28: TLayout;
    Layout29: TLayout;
    Layout30: TLayout;
    StatusBar1: TStatusBar;
    Label26: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Status_Edit1: TEdit;
    Status_Edit2: TEdit;
    Status_Edit3: TEdit;
    Layout19: TLayout;
    Label53: TLabel;
    ShadowEffect45: TShadowEffect;
    Label54: TLabel;
    ColorAnimation28: TColorAnimation;
    ShadowEffect46: TShadowEffect;
    Layout18: TLayout;
    Label52: TLabel;
    ShadowEffect44: TShadowEffect;
    ColorAnimation27: TColorAnimation;
    Label51: TLabel;
    ShadowEffect43: TShadowEffect;
    Label61: TLabel;
    ShadowEffect51: TShadowEffect;
    ColorAnimation31: TColorAnimation;
    Label63: TLabel;
    ShadowEffect53: TShadowEffect;
    Label65: TLabel;
    ShadowEffect55: TShadowEffect;
    ColorAnimation33: TColorAnimation;
    Label66: TLabel;
    ShadowEffect56: TShadowEffect;
    Label62: TLabel;
    ShadowEffect52: TShadowEffect;
    Line10: TLine;
    Line11: TLine;
    Line12: TLine;
    Line13: TLine;
    Label64: TLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    GroupBox1: TGroupBox;
    Layout31: TLayout;
    Edit1: TEdit;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    Line14: TLine;
    Line15: TLine;
    Layout32: TLayout;
    Label67: TLabel;
    ShadowEffect54: TShadowEffect;
    Label68: TLabel;
    Label69: TLabel;
    ColorAnimation32: TColorAnimation;
    ShadowEffect57: TShadowEffect;
    Layout33: TLayout;
    Label70: TLabel;
    ShadowEffect58: TShadowEffect;
    Label71: TLabel;
    ColorAnimation34: TColorAnimation;
    ShadowEffect59: TShadowEffect;
    Layout34: TLayout;
    Label72: TLabel;
    ShadowEffect60: TShadowEffect;
    Label73: TLabel;
    ShadowEffect61: TShadowEffect;
    ColorAnimation35: TColorAnimation;
    Line16: TLine;
    Line17: TLine;
    Line18: TLine;
    Line19: TLine;
    Layout35: TLayout;
    Label74: TLabel;
    ShadowEffect62: TShadowEffect;
    Label75: TLabel;
    ColorAnimation36: TColorAnimation;
    ShadowEffect63: TShadowEffect;
    GroupBox2: TGroupBox;
    RB_Nom: TRadioButton;
    RB_Prenom: TRadioButton;
    GroupBox3: TGroupBox;
    RB_Interne: TRadioButton;
    RB_Externe: TRadioButton;
    Label76: TLabel;
    Label77: TLabel;
    GroupBox4: TGroupBox;
    Edit_Search_Commune: TEdit;
    Edit_Search_Wilaya: TEdit;
    Frame_Ordonnance: TFrame7;
    Frame_EP_Ordonnance: TFrame7;
    TreeViewItem1: TTreeViewItem;
    TreeViewItem2: TTreeViewItem;
    TreeViewItem3: TTreeViewItem;
    TreeViewItem4: TTreeViewItem;
    TreeViewItem5: TTreeViewItem;
    TreeViewItem6: TTreeViewItem;
    Line20: TLine;
    Line21: TLine;
    Line22: TLine;
    Line23: TLine;
    Line24: TLine;
    Line25: TLine;
    Line26: TLine;
    Line27: TLine;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure P_AccueilClick(Sender: TObject);
    procedure PatientClick(Sender: TObject);
    procedure RDVClick(Sender: TObject);
    procedure OrdonnanceClick(Sender: TObject);
    procedure T_AccueilClick(Sender: TObject);
    procedure T_PatientClick(Sender: TObject);
    procedure T_RDVClick(Sender: TObject);
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
    procedure FloatAnimation5Finish(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure Nouveau_PatientResize(Sender: TObject);
    procedure Edit_PatientResize(Sender: TObject);
    procedure Frame_EP_PrincipaleButton3Click(Sender: TObject);
    procedure Frame_EP_PrincipaleButton1Click(Sender: TObject);
    procedure StatusBar;
    procedure FloatAnimation4Finish(Sender: TObject);
    procedure Label65Click(Sender: TObject);
    procedure Label61Click(Sender: TObject);
    procedure Label54Click(Sender: TObject);
    procedure Label55Click(Sender: TObject);
    procedure Label52Click(Sender: TObject);
    procedure StringGrid5CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure Label32Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Edit1ChangeTracking(Sender: TObject);
    procedure GroupBox3DblClick(Sender: TObject);
    procedure Label76Click(Sender: TObject);
    procedure Label77Click(Sender: TObject);
    procedure Label48Click(Sender: TObject);
    procedure StringGrid7CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid7CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure Frame_EP_PrincipaleButton2Click(Sender: TObject);
    procedure Frame_OrdonnanceButton2Click(Sender: TObject);
    procedure TreeViewItem6Click(Sender: TObject);
  private
    { Private declarations }
    WidthX, HeightX: Integer;
  public
    { Public declarations }
    Patient_ID, IDs: String;
  end;

var
  Main: TMain;

implementation

uses
  U_Option, U_Log, U_Entreprise, Winapi.Windows, U_DataModule,
  FireDAC.Comp.Client;
{$R *.fmx}
{$R resources.RES}

procedure Filter(Query: TFDQuery; const Field, TypeT, Wilaya, Commune,
  Search: String; Strbol: Boolean);
Var
  Where, andt: String;
Begin
  if ((TypeT = '') and (Wilaya = '') and (Commune = '')) then
  Begin
    Where := '';
    andt := '';
  End
  else
  Begin
    Where := ' Where';
    andt := ' and';
  End;
  Assert(Assigned(Query), 'No Query');
  if (Search = '') then
  Begin
    Query.Filtered := False;
    Query.Active := False;
  End
  else
  Begin
    Query.SQl.Clear;
    Query.SQl.Text :=
      ('Select Patient_ID, Nom, Prenom, Date_de_Nai, Date_de_Entre, Type, Sexe, Etat_Civil, Wilaya, Commune, Adresse, Mobile, Email, Groupage, Telephone, Fax From Patient '
      + Where + TypeT + andt + Wilaya + andt + Commune + ';');
    if (Strbol = True) then
      Query.Active := False
    Else
      Query.Active := True;
    Query.Filter := (Field + ' Like ' + QuotedStr('%' + Search + '%'));
    Query.Filtered := True;
  End;
End;

procedure TMain.Edit1ChangeTracking(Sender: TObject);
Var
  Str, TypeT, Wilaya, Commune: String;
  Strbol: Boolean;
begin
  inherited;
  if (RB_Nom.IsChecked = True) then
    Str := 'Nom';
  if (RB_Prenom.IsChecked = True) then
    Str := 'Prenom';
  if (RB_Interne.IsChecked = True) then
  Begin
    TypeT := ' Type="Interne"';
    if (Edit1.Text = '') then
      Strbol := True;
  End;
  if (RB_Externe.IsChecked = True) then
  Begin
    TypeT := ' Type="Externe"';
    if (Edit1.Text = '') then
      Strbol := True;
  End;
  if (Edit_Search_Wilaya.Text <> '') then
    Wilaya := ' Wilaya Like "%' + Edit_Search_Wilaya.Text + '%"';
  if (Edit_Search_Commune.Text <> '') then
    Commune := ' Commune Like "%' + Edit_Search_Commune.Text + '%"';
  Filter(DataModule1.FDQ_Recherche, Str, TypeT, Wilaya, Commune,
    Edit1.Text, Strbol);
end;

procedure TMain.Edit_PatientResize(Sender: TObject);
begin
  inherited;
  Frame_EP_Principale.OnResize(Frame_EP_Principale);
  Frame_EP_Information.OnResize(Frame_EP_Information);
  Frame_EP_Hemogramme.OnResize(Frame_EP_Hemogramme);
  Frame_EP_Hemostase.OnResize(Frame_EP_Hemostase);
  Frame_EP_Biochimic.OnResize(Frame_EP_Biochimic);
  Frame_EP_Serologie.OnResize(Frame_EP_Serologie);
  // Frame_EP_Ordonnance.OnResize(Frame_EP_Ordonnance);
end;

procedure TMain.FloatAnimation2Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Groupage.Active := False;
  DataModule1.FDQ_Groupage.Active := True;
  StringGrid5ColResize;
end;

procedure TMain.FloatAnimation4Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Patient.Active := False;
  DataModule1.FDQ_Patient.Active := True;
  StringGrid5ColResize;
end;

procedure TMain.FloatAnimation5Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Patient_Table.Active := False;
  DataModule1.FDQ_Patient_Table.Active := True;
  StringGrid5ColResize;
  StatusBar;
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
  Nouveau_Patient.OnResize(Nouveau_Patient);
  Edit_Patient.OnResize(Edit_Patient);
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

procedure TMain.StatusBar;
Begin
  With DataModule1.FDQ_Status_Patient do
  Begin
    Active := False;
    SQl.Clear;
    SQl.Text := 'Select count(*) From Patient';
    Active := True;
    Open;
    Status_Edit1.Text := IntToStr(Fields[0].AsInteger);
    Active := False;
    SQl.Clear;
    SQl.Text := 'Select Count(*) From Patient Where Type="Externe"';
    Active := True;
    Open;
    Status_Edit2.Text := IntToStr(Fields[0].AsInteger);
    Active := False;
    SQl.Clear;
    SQl.Text := 'Select Count(*) From Patient Where type="Interne"';
    Active := True;
    Open;
    Status_Edit3.Text := IntToStr(Fields[0].AsInteger);
    Active := False;
    SQl.Clear;
  End;
End;

procedure TMain.FormShow(Sender: TObject);
var
  LogDlg: TLog;
begin
  P_Accueil.IsSelected := True;
  LogDlg := TLog.Create(self);
  if (LogDlg.ShowModal = mrCancel) then
    Application.Terminate;
  LogDlg.Free;
  StatusBar;
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

procedure TMain.StringGrid7CellClick(const Column: TColumn; const Row: Integer);
Var
  tRow: Integer;
begin
  inherited;
  Patient_ID := '';
  tRow := StringGrid7.Row;
  Patient_ID := StringGrid7.cells[0, tRow];
end;

procedure TMain.StringGrid7CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  inherited;
  Label48Click(self);
end;

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
    // Frame_Hemogramme.Edit;
    // Frame_Hemostase.Edit;
    // Frame_Serologie.Edit;
    // Frame_Biochimic.Edit;
  end;
end;

procedure TMain.Frame11Button2Click(Sender: TObject);
begin
  inherited; {
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
    Frame_Serologie.Clear; }
end;

procedure TMain.Frame_EP_PrincipaleButton1Click(Sender: TObject);
Var
  ID: String;
begin
  inherited;
  With DataModule1.FDQuery1 do
  Begin
    Active := False;
    SQl.Clear;
    SQl.Text := 'Select * From Patient Where Patient_ID="' + Patient_ID + '";';
    Active := True;
    Edit;
    // Frame_EP_Principale.Edit;
    ID := Frame_EP_Principale.Edit;
    Frame_EP_Information.Edit;
    Post;
    Active := False;
    SQl.Clear;
    if (Frame_EP_Hemogramme.IsSet = True) then
      Frame_EP_Hemogramme.Edit(ID);
    if (Frame_EP_Hemostase.IsSet = True) then
      Frame_EP_Hemostase.Edit(ID);
    if (Frame_EP_Serologie.IsSet = True) then
      Frame_EP_Serologie.Edit(ID);
    if (Frame_EP_Biochimic.IsSet) then
      Frame_EP_Biochimic.Edit(ID);
  End;
end;

procedure TMain.Frame_EP_PrincipaleButton2Click(Sender: TObject);
begin
  inherited;
  Frame_Principale.Clear();
  if (TabItem8.IsSelected = True) then
    Frame_EP_Information.Clear;
  if (TabItem9.IsSelected = True) then
    Frame_EP_Hemogramme.Clear;
  if (TabItem10.IsSelected = True) then
    Frame_EP_Hemostase.Clear;
  if (TabItem11.IsSelected = True) then
    Frame_EP_Biochimic.Clear;
  if (TabItem12.IsSelected = True) then
    Frame_EP_Serologie.Clear;
end;

procedure TMain.Frame_EP_PrincipaleButton3Click(Sender: TObject);
begin
  inherited;
  Edit_Patient.Visible := False;
  Patient.IsSelected := True;
  H_Gen_Patient.IsSelected := True;
end;

procedure TMain.Frame_OrdonnanceButton2Click(Sender: TObject);
begin
  inherited;
  Frame_Ordonnance.Insert;
end;

procedure TMain.Frame_PrincipaleButton1Click(Sender: TObject);
Var
  ID: String;
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
      ID := Frame_Principale.Insert;
      Frame_Information.Insert;
      Post;
      SQl.Clear;
      Active := False;
    End;
    Frame_Hemogramme.Insert(ID);
    Frame_Hemostase.Insert(ID);
    Frame_Serologie.Insert(ID);
    Frame_Biochimic.Insert(ID);
    Frame_Ordonnance.ID(ID);
  end;
end;

procedure TMain.GroupBox3DblClick(Sender: TObject);
begin
  inherited;
  RB_Interne.IsChecked := False;
  RB_Externe.IsChecked := False;
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

procedure TMain.Label30Click(Sender: TObject);
begin
  inherited;
  Patient_RechercheClick(self);
end;

procedure TMain.Label32Click(Sender: TObject);
Var
  P: TPointF;
begin
  inherited;
  P.X := -5;
  P.Y := Label32.Height;
  P := Label32.LocalToAbsolute(P);
  P := ClientToScreen(P);
  PopupMenu1.Popup(P.X, P.Y);
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

procedure TMain.Label48Click(Sender: TObject);
begin
  inherited;
  Edit_Patient.Visible := True;
  Edit_Patient.IsSelected := True;
  H_Accueil.IsSelected := True;
  Frame_EP_Principale.OnDataLoad;
  Frame_EP_Information.OnDataLoad;
end;

procedure TMain.Label4Click(Sender: TObject);
var
  FenetreDlg: TFenetre;
begin
  FenetreDlg := TFenetre.Create(self);
  FenetreDlg.ShowModal;
end;

procedure TMain.Label52Click(Sender: TObject);
begin
  inherited;
  New_PatientClick(self);
end;

procedure TMain.Label54Click(Sender: TObject);
begin
  inherited;
  Button2Click(self);
end;

procedure TMain.Label55Click(Sender: TObject);
begin
  inherited;
  Frame_PrincipaleButton1Click(self);
end;

procedure TMain.Label61Click(Sender: TObject);
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    With DataModule1.FDCmnd_Drop_Patient do
    Begin
      Active := False;
      CommandText.Clear;
      CommandText.Text := ('DELETE FROM Patient WHERE Patient_ID="' +
        Patient_ID + '";');
      Active := True;
      Execute;
      Active := False;
      CommandText.Clear;
      FloatAnimation5.OnFinish(FloatAnimation5);
    End;
  End;
end;

procedure TMain.Label65Click(Sender: TObject);
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    Edit_Patient.Visible := True;
    Edit_Patient.IsSelected := True;
    H_Accueil.IsSelected := True;
    Frame_EP_Principale.OnDataLoad;
    Frame_EP_Information.OnDataLoad;
    Frame_EP_Hemogramme.OnDataLoad;
    Frame_EP_Hemostase.OnDataLoad;
    Frame_EP_Serologie.OnDataLoad;
    Frame_EP_Biochimic.OnDataLoad;
    Frame_EP_Ordonnance.OnDataLoad;
  End
  else
  Begin
    Showmessage
      ('Sil vous plait choisir une patient ou double clicker sur un patient de table');
  End;
end;

procedure TMain.Label6Click(Sender: TObject);
var
  OptionDlg: TOption;
begin
  OptionDlg := TOption.Create(self);
  OptionDlg.ShowModal;
end;

procedure TMain.Label76Click(Sender: TObject);
begin
  inherited;
  if (Label76.RotationAngle = 180) then
  Begin
    GroupBox1.Align := TAlignLayout.None;
    GroupBox1.Height := (GroupBox1.Height - 78);
    GroupBox2.Visible := False;
    GroupBox3.Visible := False;
    GroupBox4.Visible := False;
    Label76.RotationAngle := 0;
    Layout2.Height := (Layout2.Height - 57);
  End
  else if (Label76.RotationAngle = 0) then
  Begin
    GroupBox1.Align := TAlignLayout.Client;
    GroupBox1.Height := (GroupBox1.Height + 78);
    GroupBox2.Visible := True;
    GroupBox3.Visible := True;
    GroupBox4.Visible := True;
    Label76.RotationAngle := 180;
    Layout2.Height := (Layout2.Height + 57);
  End;
end;

procedure TMain.Label77Click(Sender: TObject);
begin
  inherited;
  if (Label77.RotationAngle = 180) then
  Begin

  End
  else if (Label77.RotationAngle = 0) then
  Begin

  End;
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

procedure TMain.Nouveau_PatientResize(Sender: TObject);
begin
  inherited;
  Frame_Principale.OnResize(Frame_Principale);
  Frame_Information.OnResize(Frame_Information);
  Frame_Hemogramme.OnResize(Frame_Hemogramme);
  Frame_Hemostase.OnResize(Frame_Hemostase);
  Frame_Biochimic.OnResize(Frame_Biochimic);
  Frame_Serologie.OnResize(Frame_Serologie);
  // Frame_Ordonnance.OnResize(Frame_Ordonnance);
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
  tRow: Integer;
begin
  inherited;
  Patient_ID := '';
  tRow := StringGrid5.Row;
  Patient_ID := StringGrid5.cells[0, tRow];
  // Asign Variables
end;

procedure TMain.StringGrid5CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  inherited;
  Label65Click(self);
end;

procedure TMain.TreeViewItem6Click(Sender: TObject);
begin
  inherited;
  Ordonnance.Visible := True;
  Ordonnance.OnClick(Ordonnance);
  Ordonnance.IsSelected := True;
end;

procedure TMain.T_AccueilClick(Sender: TObject);
begin
  P_Accueil.Visible := True;
  P_Accueil.OnClick(P_Accueil);
  P_Accueil.IsSelected := True;
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
