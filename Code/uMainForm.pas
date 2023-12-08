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
    procedure btnGetDataClick(Sender: TObject);
  private
    procedure FillListView;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
uses
  uDataModule;

procedure TForm1.btnGetDataClick(Sender: TObject);
begin
//  Spinner.Enabled := True;
  dmSpinnerDemo.GetData;
  FillListView;
  //Spinner.Enabled := False;
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
