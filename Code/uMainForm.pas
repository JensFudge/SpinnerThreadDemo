unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TForm1 = class(TForm)
    btnGetData: TButton;
    lvArchers: TListView;
    Spinner: TAniIndicator;
    lblErrorText: TLabel;
    procedure btnGetDataClick(Sender: TObject);
  private
    procedure FillListView;
    procedure HandleDataException(aMsg: String);
    procedure HandleDataDone;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
uses
  uDataModule, system.Threading, uAnimationForm;


{
procedure TForm1.btnGetDataClick(Sender: TObject);
begin

//Tehcnically this starts the spinner, but it's not running
//because the GetData and FillListView is running
  Spinner.Enabled := True;
  dmSpinnerDemo.GetData;
  FillListView;
  Spinner.Enabled := False;
end;
}



procedure TForm1.btnGetDataClick(Sender: TObject);
begin
  //Spinner.Enabled := True;
  //But let's make a nicer UI
  frmSpinner.StartSpinner(self, 'Retreiving Data', 'Please wait');

 TTask.run(
      procedure
      begin
        try
         dmSpinnerDemo.GetData;
         TThread.Queue(TThread.CurrentThread, HandleDataDone );
        except on E:Exception do
          begin
            var lMsg: string := E.Message;
            TThread.Queue(TThread.CurrentThread, procedure
                                                 begin
                                                   HandleDataException(lMsg)
                                                 end);
          end;
        end;
      end
      );

  //Spinner.Enabled := False;
end;


procedure TForm1.HandleDataDone;
begin
  FillListView;
  frmSpinner.StopSpinner;
end;

procedure TForm1.HandleDataException(aMsg : String);
begin
   lblErrorText.Text := aMsg;
   frmSpinner.StopSpinner;
end;




procedure TForm1.FillListView;
begin
  lvArchers.BeginUpdate;
  try
    lvArchers.Items.Clear;
    dmSpinnerDemo.fdtblArchers.First;
    var lItem : TListViewItem;
    while not dmSpinnerDemo.fdtblArchers.Eof do
    begin
      lItem := lvArchers.Items.Add;
      lItem.Text := dmSpinnerDemo.fdtblArchers.FieldByName('ArcherName').AsString + ' - ' +
                    dmSpinnerDemo.fdtblArchers.FieldByName('ArcherPoints').AsString;
      dmSpinnerDemo.fdtblArchers.Next;
    end;
  finally
    lvArchers.EndUpdate;
  end;
end;

end.
