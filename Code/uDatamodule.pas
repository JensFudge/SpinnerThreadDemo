unit uDatamodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageXML;

type
  TdmSpinnerDemo = class(TDataModule)
    fdtblArchers: TFDMemTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetData;
  end;

var
  dmSpinnerDemo: TdmSpinnerDemo;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TdmSpinnerDemo }

procedure TdmSpinnerDemo.DataModuleCreate(Sender: TObject);
begin

  fdtblArchers.Close;


end;

procedure TdmSpinnerDemo.GetData;
begin
  //To run this demo you need to create the file that contains the data
  //At designtime right-click on fdtblArchers and choose "Save To File"
  //I chose the binary file "TheData.fdb", but you can choose anything you want
  sleep(1000);    //Sleeping is just to simulate this is taking time
  fdtblArchers.LoadFromFile('TheData.fdb', TFDStorageFormat.sfBinary);
  fdtblArchers.Open;
  sleep(1000);    //Sleeping is just to simulate this is taking time
 // raise Exception.Create('A simulated error occured');
end;

end.
