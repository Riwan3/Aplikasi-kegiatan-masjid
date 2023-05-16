unit kegiatan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, tambahkegiatan, uModul;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses home;

procedure TForm6.Button3Click(Sender: TObject);
begin
form8.Show;
form6.hide;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
form4.show;
form6.hide;
end;

end.
