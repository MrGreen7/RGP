unit U_Base_Print;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, U_Base_Form,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Printer;

type
  TBase_Print = class(TBase_Form)
    Base_ToolBar: TToolBar;
    Base_Print_Button: TButton;
    Base_Cancel_Button: TButton;
    Base_ScrollBox: TScrollBox;
    Base_PrintDialog: TPrintDialog;
    procedure Base_Cancel_ButtonClick(Sender: TObject);
    procedure Base_Print_ButtonClick(Sender: TObject);
    procedure Base_ScaledLayoutPainting(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure Base_ScrollBoxCalcContentBounds(Sender: TObject; var ContentBounds: TRectF);
    procedure Base_ScrollBoxMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
      Base_ScaledLayout : TScaledLayout;
  end;

var
  Base_Print: TBase_Print;

implementation

{$R *.fmx}

procedure TBase_Print.Base_Cancel_ButtonClick(Sender: TObject);
begin
  Base_Form.Close;
end;

procedure TBase_Print.Base_Print_ButtonClick(Sender: TObject);
var
  DestRect: TRectF;
begin
  if Base_PrintDialog.Execute then
  begin
    SetPrinter(Printer);
    Printer.Orientation := TPrinterOrientation.poPortrait;
    // Printer.Title:=;
    Printer.ActivePrinter.SelectDPI(1200, 1200);
    Printer.BeginDoc;
    DestRect := TRectF.Create(0, 0, Printer.PageWidth, Printer.PageHeight);
    Base_ScaledLayout.PaintTo(Printer.Canvas, DestRect);
    Printer.EndDoc;
    Base_Print.Close;
  end;
end;

procedure TBase_Print.Base_ScaledLayoutPainting(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
var
  S: TStrokeBrush;
begin
  S := TStrokeBrush.Create(TBrushKind.Solid, TAlphaColors.White);
  Canvas.FillRect(ARect, 0, 0, [], 1, S);
end;

procedure TBase_Print.Base_ScrollBoxCalcContentBounds(Sender: TObject; var ContentBounds: TRectF);
begin
  with Base_ScaledLayout do
  begin
    ContentBounds.Width := Position.X * 2 + OriginalWidth * Scale.X;
    ContentBounds.Height := Position.Y * 2 + OriginalHeight * Scale.Y;
  end;
end;

procedure TBase_Print.Base_ScrollBoxMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; var Handled: Boolean);
var
  V, C: TPointF;
  Sn, So: Single;
begin
  V := Base_ScrollBox.ViewportPosition;
  C := Base_ScrollBox.AbsoluteToLocal(ScreenToClient(Screen.MousePos)) - Base_ScaledLayout.Position.Point;
  So := Base_ScaledLayout.Scale.X;
  Sn := So + (WheelDelta * So) / Base_ScrollBox.BoundsRect.BottomRight.Length;
  if Sn < 0.5 then
    Sn := 0.5;
  if So < 0.5 then
    So := 0.5;
  Base_ScaledLayout.Scale.Point := PointF(Sn, Sn);
  V := V + C;
  V := (V * (Sn / So)) - C;
  Base_ScrollBox.Content.BeginUpdate;
  Base_ScrollBox.ViewportPosition := V;
  Base_ScrollBox.Content.EndUpdate;
  Handled := True;
end;

end.

