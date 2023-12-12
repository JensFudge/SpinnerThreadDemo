program SpinnerDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainForm in 'uMainForm.pas' {Form1},
  uDatamodule in 'uDatamodule.pas' {dmSpinnerDemo: TDataModule},
  uAnimationForm in 'uAnimationForm.pas' {frmSpinner};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmSpinnerDemo, dmSpinnerDemo);
  Application.CreateForm(TfrmSpinner, frmSpinner);
  Application.Run;
end.
