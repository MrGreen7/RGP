{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit U_Entreprise;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.ListBox, FMX.Edit, FMX.TabControl, U_Base_Form;

type
  TEntreprise = class(TBase_Form)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ID_Contact: TTabControl;
    TabItem1: TTabItem;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label12: TLabel;
    Label13: TLabel;
    Edit_Code_Wilaya: TEdit;
    Edit_Code_Postal: TEdit;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit_Code_WilayaChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Entreprise: TEntreprise;

implementation

uses
  U_DataModule;

{$R *.fmx}
{$R resources.RES}

procedure WiliyaLoad(const Combo: TComboBox);
begin
  // Open Alg
  with DataModule1.FDQ_Wilaya do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := ('SELECT Nom FROM wilayas');
    Active := True;
    while not Eof do
    begin
      Combo.Items.Add(Fields.Fields[0].AsString);
      Next;
    end;
    SQL.Clear;
    Active := False;
  end;
end;

procedure CommuneLoad(const Edit: TEdit; const Combo: TComboBox);
var
  Code_P: string;
begin
  Code_P := Edit.Text; // Edit_Code_Wiliya
  Combo.Items.Clear; // Combobox3
  with DataModule1.FDQ_Commune do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := ('SELECT Nom FROM communes WHERE `Code_Wilaya`="' +
      Code_P + '"');
    Active := True;
    while not Eof do
    begin
      Combo.Items.Add(Fields.Fields[0].AsString); // Combobox3
      Next;
    end;
    SQL.Clear;
    Active := False;
  end;
end;

procedure TEntreprise.Button1Click(Sender: TObject);
begin
  // inherited;
  if ((ComboBox1.Items.Text <> '') and (ComboBox2.Items.Text <> '') and
    (ComboBox3.Items.Text <> '') and (Edit1.Text <> '') and (Edit3.Text <> '')
    and (Edit_Code_Wilaya.Text <> '') and (Edit_Code_Postal.Text <> '')) then
  begin
    with DataModule1.FDQ_Entreprise do
    begin
      SQL.Clear;
      SQL.Text := (' Select * From Entreprise ');
      Active := True;
      Edit;
      FieldByName('Form_Juridique').AsString := ComboBox1.Selected.Text;
      FieldByName('Wilaya').AsString := ComboBox2.Selected.Text;
      FieldByName('Commune').AsString := ComboBox3.Selected.Text;
      FieldByName('Libelle').AsString := Edit1.Text;
      FieldByName('Libelle_Sec').AsString := Edit2.Text;
      FieldByName('Adresse').AsString := Edit3.Text;
      FieldByName('Telephone').AsString := Edit4.Text;
      FieldByName('Mobile').AsString := Edit5.Text;
      FieldByName('Fax').AsString := Edit6.Text;
      FieldByName('Email').AsString := Edit7.Text;
      FieldByName('Web').AsString := Edit8.Text;
      FieldByName('Code_de_Wilaya').Value := Edit_Code_Wilaya.Text;
      FieldByName('Code_Postal').Value := Edit_Code_Postal.Text;
      Post;
      SQL.Clear;
      Active := False;
    end;
  end;
  try
    Entreprise.Close;
  except
    on E: Exception do
    begin
      Entreprise.Free;
    end;
  end;
end;

procedure TEntreprise.Button2Click(Sender: TObject);
begin
  // inherited;
  try
    ModalResult := mrCancel;
  except
    on E: Exception do
    begin
      Entreprise.Close;
    end;
  end;
end;

procedure TEntreprise.Button3Click(Sender: TObject);
begin
  // inherited;
  ComboBox1.HitTest := True;
  ComboBox2.HitTest := True;
  ComboBox3.HitTest := True;
  ComboBox1.Clear;
  ComboBox2.Clear;
  ComboBox3.Clear;
  ComboBox1.Items.Add('EPH');
  ComboBox1.Items.Add('EPHP');
  WiliyaLoad(Combobox2);
  CommuneLoad(Edit_Code_Wilaya, ComboBox3);
  Edit1.HitTest := True;
  Edit2.HitTest := True;
  Edit3.HitTest := True;
  Edit4.HitTest := True;
  Edit5.HitTest := True;
  Edit6.HitTest := True;
  Edit7.HitTest := True;
  Edit8.HitTest := True;
  ComboBox1.SetFocus;
end;

procedure TEntreprise.ComboBox2Change(Sender: TObject);
begin
  with DataModule1.FDQ_Wilaya do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := ('SELECT Code_Wilaya, Nom FROM wilayas');
    Active := True;
    Locate('Nom', ComboBox2.Selected.Text, []);
    Edit_Code_Wilaya.Text := FieldByName('Code_Wilaya').AsString;
    SQL.Clear;
    Active := False;
  end;
end;

procedure TEntreprise.ComboBox3Change(Sender: TObject);
begin
  with DataModule1.FDQ_Commune do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := ('SELECT Code_Postal, Nom FROM communes');
    Active := True;
    Locate('Nom', ComboBox3.Selected.Text, []);
    Edit_Code_Postal.Text := FieldByName('Code_Postal').Value;
    Active := False;
  end;
end;

procedure TEntreprise.Edit_Code_WilayaChange(Sender: TObject);
var
  Code_P: string;
begin
  CommuneLoad(Edit_Code_Wilaya, ComboBox3);
end;

procedure TEntreprise.FormCreate(Sender: TObject);
begin
  WiliyaLoad(ComboBox2);
end;

procedure TEntreprise.FormShow(Sender: TObject);
var
  Existed: boolean;
begin
  // inherited;
  with DataModule1.FDQ_Entreprise do
  begin
    SQL.Text := ('Select * From Entreprise');
    Active := True;
    if (FieldByName('ID_EntreP').AsString <> '') then
      Existed := True
    else
      Existed := False;
    if (Existed = True) then
    begin
      Open;
      ComboBox1.Items.Text := FieldByName('Form_Juridique').AsString;
      ComboBox1.ItemIndex := 0;
      ComboBox2.Items.Text := FieldByName('Wilaya').AsString;
      ComboBox2.ItemIndex := 0;
      Edit1.Text := FieldByName('Libelle').AsString;
      Edit2.Text := FieldByName('Libelle_Sec').AsString;
      Edit3.Text := FieldByName('Adresse').AsString;
      Edit4.Text := FieldByName('Telephone').AsString;
      Edit5.Text := FieldByName('Mobile').AsString;
      Edit6.Text := FieldByName('Fax').AsString;
      Edit7.Text := FieldByName('Email').AsString;
      Edit8.Text := FieldByName('Web').AsString;
      Edit_Code_Wilaya.Text := FieldByName('Code_de_Wilaya').Value;
      Edit_Code_Postal.Text := FieldByName('Code_Postal').Value;
      if (Edit_Code_Wilaya.Text <> '') then
      begin
        ComboBox3.Items.Text := FieldByName('Commune').AsString;
        ComboBox3.ItemIndex := 0;
      end;
      ComboBox1.HitTest := False;
      ComboBox2.HitTest := False;
      ComboBox3.HitTest := False;
      Edit1.HitTest := False;
      Edit2.HitTest := False;
      Edit3.HitTest := False;
      Edit4.HitTest := False;
      Edit5.HitTest := False;
      Edit6.HitTest := False;
      Edit7.HitTest := False;
      Edit8.HitTest := False;
    end;
  end;
end;

end.
