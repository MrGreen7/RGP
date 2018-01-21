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
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.ListBox, FMX.Edit, FMX.TabControl,U_Base_Form;

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
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label12: TLabel;
    Label13: TLabel;
    Edit_Code_Wilaya: TEdit;
    Edit_Code_Postal: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit_Code_WilayaChange(Sender: TObject);
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

procedure TEntreprise.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
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
  Code_P := Edit_Code_Wilaya.Text;
  Combobox3.Items.Clear;
  with DataModule1.FDQ_Commune do
  begin
    Active := False;
    SQl.Clear;
    SQl.Text := ('SELECT Nom FROM communes WHERE `Code_Wilaya`="' + Code_P + '"');
    Active := True;
    while not EoF do
    begin
      Combobox3.Items.Add(Fields.Fields[0].AsString);
      Next;
    end;
    Active := False;
  end;
end;

procedure TEntreprise.FormCreate(Sender: TObject);
begin
  with DataModule1.FDQ_Wilaya do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := ('SELECT Nom FROM wilayas');
    Active := True;
    while not Eof do
    begin
      ComboBox2.Items.Add(Fields.Fields[0].AsString);
      Next;
    end;
    Active := False;
  end;
end;

end.

