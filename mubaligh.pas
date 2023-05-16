unit mubaligh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses uModul, home, tambahmubaligh;

procedure TForm7.Button3Click(Sender: TObject);
begin
form9.show;
form7.hide;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
form4.show;
form7.hide;
end;

end.
