program RGP;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Log in 'U_Log.pas' {Log},
  U_Ins in 'U_Ins.pas' {Ins},
  U_DataModule in 'U_DataModule.pas' {DataModule1: TDataModule},
  U_Main in 'U_Main.pas' {Main},
  U_Option in 'U_Option.pas' {Option},
  U_Fenetre in 'U_Fenetre.pas' {Fenetre},
  U_Entreprise in 'U_Entreprise.pas' {Entreprise},
  U_Base_Form in 'U_Base_Form.pas' {Base_Form},
  U_Base_Print in 'U_Base_Print.pas' {Base_Print},
  U_Frame_Inf_Principale in 'U_Frame_Inf_Principale.pas' {Frame1: TFrame},
  U_Frame_Information in 'U_Frame_Information.pas' {Frame2: TFrame},
  U_Frame_Hemogramme in 'U_Frame_Hemogramme.pas' {Frame3: TFrame},
  U_Frame_Hemostase in 'U_Frame_Hemostase.pas' {Frame4: TFrame},
  U_Frame_Serologie in 'U_Frame_Serologie.pas' {Frame5: TFrame};

{$R *.res}

begin
  Application.Initialize;
  AApplication.CreateForm(TMain, Main);
  AApplication.CreateForm(TDataModule1, DataModule1);
  AApplication.CreateForm(TBase_Form, Base_Form);
  AApplication.CreateForm(TBase_Print, Base_Print);
  ication.Run;
end.

