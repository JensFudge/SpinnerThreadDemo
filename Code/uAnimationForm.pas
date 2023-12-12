unit uAnimationForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Effects, FMX.Objects, FMX.Layouts;

type
  TfrmSpinner = class(TForm)
    LayoutSpinner: TLayout;
    rectBack: TRectangle;
    rectFront: TRectangle;
    ShadowEffect1: TShadowEffect;
    lblTop: TLabel;
    lblBottom: TLabel;
    aniSpinner: TAniIndicator;
  private
    { Private declarations }
  public
    { Public declarations }
    /// <summary>
    ///  The idea is to pass in a parent, could be a form, and two texts
    ///  The Layout that the entire spinner thing is on, is now moved to that new parent
    ///  And the spinner is enabled
    /// </summery>
    procedure StartSpinner(aParent: TFMXObject; aTopText, aBottomText: String);
    /// <summary>
    ///  The Layout is moved back to the original form again
    /// </summary>
    procedure StopSpinner;
    procedure HowToCreate;

  end;

var
  frmSpinner: TfrmSpinner;

implementation

{$R *.fmx}
procedure TfrmSpinner.HowToCreate;
begin
  {This proc does nothing but in comments explain how to build the spinner thing}
  {

   1 Drop a TLayout on the form, align to Client
   2 Drop a TRectangle on the Layout, align to Client = RectBack
   3 Set the RectBack.Fill.Color to Black
   4 Set the RectBack.Opacity to 0.5
   5 Set the RectBack.Sides to false (all 4)
   6 Drop a TRectangle on the Layout, RectFront.
   7 Set the RectFront.Alignment to VertCenter
   8 Set the RectFront.Margins Left and right to 30
   9 Remove the sides (like on RectBack)
   10 Set RectFront.XRadius and YRadius to 6
   11 On the RectFront, drop a ShadowEffect
   12 Set the Shadow.Distance to 5
   13 Set the Shadow.Softness to 0.2
   14 Set the RectFront.Fill.Kind to Gradient
   15 DoubleClick the RectFront.Fill.Gradient Property to start the property editor
   16 Click the left dot at the bottom of the designer - Set the RGB Values R=204, G=204, B=204, A= 255
   17 Click the right dot at the bottom of the designer - Set the values to 255 (all of them), this is white
   18 Drop a TLabel on the RectFront - lblTop
   19 lblTop.Align is set to top
   20 lblTop.Margins.Top is 30, left and right are 10
   21 lblTop.TextSettings.HorzAlign is Center
   22 lblTop.TextSettings.WordWrap is true
   23 lblMessage.Height is 60
   24 Drop a TAniIndicator on RectFront
   25 AniIndicator.align is set to center
   26 Drop a TLabel on RectFront - lblBottom
   27 lblBottom.align is set to Bottom
   20 lblBottom.Margins.Bottom is 30, left and right are 10
   21 lblBottom.TextSettings.HorzAlign is Center
   22 lblBottom.TextSettings.WordWrap is true
   23 lblBottom.Height is 60


  }
end;

procedure TfrmSpinner.StartSpinner(aParent: TFMXObject; aTopText, aBottomText: String);
begin
  self.lblTop.Text := aTopText;
  self.lblBottom.Text := aBottomText;
  self.aniSpinner.Enabled := true;
  self.LayoutSpinner.Parent := aParent;
  self.LayoutSpinner.BringToFront;
  self.rectBack.BringToFront;
  self.rectFront.BringToFront;
end;

procedure TfrmSpinner.StopSpinner;
begin
  self.aniSpinner.Enabled := false;
  self.LayoutSpinner.Parent := self;
end;


end.
