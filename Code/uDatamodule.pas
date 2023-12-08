unit uDatamodule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdmSpinnerDemo = class(TDataModule)
    fdtblArchers: TFDMemTable;
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

procedure TdmSpinnerDemo.GetData;
begin
  sleep(1000);
  fdtblArchers.Open;
  sleep(1000);
end;

end.
