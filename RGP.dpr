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
  U_Base_Print in 'U_Base_Print.pas' {Base_Print};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TBase_Form, Base_Form);
  Application.CreateForm(TBase_Print, Base_Print);
  Application.Run;
end.

